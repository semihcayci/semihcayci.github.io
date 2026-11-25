require "nokogiri"

# Keep visual, reading, and keyboard order consistent in the generated HTML.
module PublicationPresentation
  SELECTED_ORDER = %w[
    cayci2026geometric
    cayci2024convergence
    cayci2026stochasticgaussnewton
    cayci2025recurrent
    muller2026optimal
  ].freeze

  CONFERENCE_VENUES = {
    "International Conference on Machine Learning" => "ICML",
    "International Conference on Artificial Intelligence and Statistics" => "AISTATS",
    "Advances in Neural Information Processing Systems" => "NeurIPS"
  }.freeze

  PUBLISHED_ORDER = %w[
    cayci2026geometric
    cayci2026stochasticgaussnewton
    muller2026optimal
    oberweis2026langevin
    arda2026transformers
    song2026r13
    cayci2025rnngradient
    cayci2025recurrent
    muller2025fisher
    cayci2025budgeted
    yardim2025variational
  ].freeze

  def self.reorder(list, keys)
    return unless list

    entries = list.element_children.select { |node| node.name == "li" }
    entries.each_with_index.sort_by do |entry, index|
      key = entry.at_css(".row > [id]")&.[]("id")
      [keys.index(key) || keys.length, index]
    end.each { |entry, _| list.add_child(entry.unlink) }
  end

  def self.apply(page)
    return unless page.output_ext == ".html" && page.output.include?('class="publications"')

    html = Nokogiri::HTML5.parse(page.output)
    html.css(".publications .links").each do |links|
      bib = links.at_css("a.bibtex")
      links.add_child(bib.unlink) if bib
    end

    if page.data["layout"] == "about"
      reorder(html.at_css(".publications ol.bibliography"), SELECTED_ORDER)
    end

    html.css("#cayci2025recurrent .links a").each do |link|
      link.remove if link.text.strip == "Code"
    end

    html.css(".publications .periodical em").each do |venue|
      conference = CONFERENCE_VENUES.find { |name, _| venue.text.include?(name) }
      next unless conference

      name, abbreviation = conference
      venue.content = "#{name} (#{abbreviation})"
    end

    html.css("#published-papers-section ol.bibliography").each do |list|
      reorder(list, PUBLISHED_ORDER)
    end

    page.output = html.to_html
  end
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |page|
  PublicationPresentation.apply(page)
end
