---
layout: default
title: Publications
permalink: /publications/
---

<section class="page-hero">
  <h1>Publications</h1>
</section>

<section class="page-content archive-list">
  {% assign publications = site.publications | sort: "year" | reverse %}
  {% for publication in publications %}
    <article>
      <p class="meta">{{ publication.year }}{% if publication.journal %} · {{ publication.journal }}{% endif %}</p>
      <h2><a href="{{ publication.url | relative_url }}">{{ publication.title }}</a></h2>
      {% if publication.authors %}
        <p>{{ publication.authors }}</p>
      {% endif %}
    </article>
  {% endfor %}
</section>
