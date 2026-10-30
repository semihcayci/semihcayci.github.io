---
layout: page
title: Publications
permalink: /publications/
nav: true
nav_order: 2
---

Journal articles, conference papers, and preprints.

{% include bib_search.liquid %}

<section class="publication-section" id="published-papers-section" markdown="1">

## Published papers

<div class="publications">
{% bibliography --query @*[category=publication] %}
</div>

</section>

<section class="publication-section" id="preprints-section" markdown="1">

## Preprints

<div class="publications">
{% bibliography --query @misc %}
</div>

</section>
