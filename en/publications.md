---
layout: default
title: Publications
lang: en
permalink: /en/publications/
---

<section class="page-hero"><h1>Publications</h1><p>{{ site.publications | size }} publications listed.</p><p class="page-update">Last updated: {{ site.data.publications.updated_at }}</p></section>
<section class="page-content publication-archive">
  {% assign groups = site.publications | group_by_exp: "publication", "publication.year" | sort: "name" | reverse %}
  <nav class="publication-year-nav" id="years" aria-label="Jump to a year"><p>Go to year</p><div>{% for year in groups %}<a href="#year-{{ year.name | default: 'undated' }}">{{ year.name | default: 'Undated' }}</a>{% endfor %}</div></nav>
  {% for year in groups %}
    <section class="publication-year-group"><header class="publication-year-heading"><h2 id="year-{{ year.name | default: 'undated' }}">{{ year.name | default: 'Undated' }}</h2><div class="publication-year-actions"><p>{{ year.items | size }} publication{% if year.items.size > 1 %}s{% endif %}</p><a href="#years">All years</a></div></header>
      <div class="archive-list">{% assign publications = year.items | sort: "title" %}{% for publication in publications %}<article><p class="meta">{{ publication.journal }}{% if publication.year %} · {{ publication.year }}{% endif %}</p><h3><a class="publication-title-link" href="{{ publication.url | relative_url }}">{{ publication.title }}</a></h3>{% if publication.authors %}<p>{{ publication.authors }}</p>{% endif %}{% if publication.doi %}<a class="doi-link" href="https://doi.org/{{ publication.doi }}" target="_blank" rel="noopener">DOI {{ publication.doi }}</a>{% endif %}</article>{% endfor %}</div>
    </section>
  {% endfor %}
</section>
