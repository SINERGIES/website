---
layout: default
title: Publications
permalink: /publications/
---

<section class="page-hero">
  <h1>Publications</h1>
  <p>{{ site.publications | size }} publications répertoriées.</p>
  <p class="page-update">Dernière mise à jour : {{ site.data.publications.updated_at }}</p>
</section>

<section class="page-content archive-list">
  {% assign publications = site.publications | sort: "year" | reverse %}
  {% for publication in publications %}
    <article>
      <p class="meta">{{ publication.journal }}{% if publication.year %} · {{ publication.year }}{% endif %}</p>
      <h2><a class="publication-title-link" href="{{ publication.url | relative_url }}">{{ publication.title }}</a></h2>
      {% if publication.authors %}
        <p>{{ publication.authors }}</p>
      {% endif %}
      {% if publication.doi %}
        <a class="doi-link" href="https://doi.org/{{ publication.doi }}" target="_blank" rel="noopener">DOI {{ publication.doi }}</a>
      {% endif %}
    </article>
  {% endfor %}
</section>
