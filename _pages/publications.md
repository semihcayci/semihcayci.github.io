---
layout: page
title: Publications
permalink: /publications/
nav: true
nav_order: 2
---

Journal articles, conference papers, and preprints. [Download the complete BibTeX bibliography]({{ '/assets/bibliography/semih-cayci.bib' | relative_url }}).

{% include bib_search.liquid %}

<section class="publication-section" markdown="1">

## Preprints

<div class="publications">
{% bibliography --query @misc %}
</div>

</section>

<section class="publication-section" markdown="1">

## Published papers

<div class="publications">
{% bibliography --query @*[category=publication] %}
</div>

</section>
