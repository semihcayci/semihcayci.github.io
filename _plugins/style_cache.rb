# Include site-owned Sass in al-folio's stylesheet version, alongside the theme.
# al_folio_core 1.0.15 otherwise hashes only the gem's Sass directory.
module PersonalStyleCache
  private

  def directory_files_content
    site_styles = Dir['_sass/**/*', 'assets/css/*.scss'].sort.select { |path| File.file?(path) }
    super + site_styles.map { |path| File.read(path) }.join
  end
end

Jekyll::Hooks.register :site, :after_init do
  digester = Jekyll::CacheBust::CacheDigester
  digester.prepend(PersonalStyleCache) unless digester.ancestors.include?(PersonalStyleCache)
end
