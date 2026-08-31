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

<section class="page-content publication-archive">
  {% assign publication_groups = site.publications | group_by_exp: "publication", "publication.year" | sort: "name" | reverse %}

  <nav class="publication-year-nav" id="publication-years" aria-labelledby="publication-year-nav-title">
    <p id="publication-year-nav-title">Aller à une année</p>
    <div>
      {% for year in publication_groups %}
        {% assign year_id = year.name | default: "sans-date" %}
        <a href="#publications-{{ year_id }}">
          {% if year.name == "" or year.name == nil %}
            Sans date
          {% else %}
            {{ year.name }}
          {% endif %}
        </a>
      {% endfor %}
    </div>
  </nav>

  {% for year in publication_groups %}
    {% assign publication_count = year.items | size %}
    {% assign year_id = year.name | default: "sans-date" %}
    <section class="publication-year-group" aria-labelledby="publications-{{ year_id }}">
      <header class="publication-year-heading">
        <h2 id="publications-{{ year_id }}">
          {% if year.name == "" or year.name == nil %}
            Date non renseignée
          {% else %}
            {{ year.name }}
          {% endif %}
        </h2>
        <div class="publication-year-actions">
          <p>{{ publication_count }} publication{% if publication_count > 1 %}s{% endif %}</p>
          <a href="#publication-years">Toutes les années</a>
        </div>
      </header>

      <div class="archive-list">
        {% assign publications = year.items | sort: "title" %}
        {% for publication in publications %}
          <article>
            <p class="meta">{{ publication.journal }}{% if publication.year %} · {{ publication.year }}{% endif %}</p>
            <h3><a class="publication-title-link" href="{{ publication.url | relative_url }}">{{ publication.title }}</a></h3>
            {% if publication.authors %}
              <p>{{ publication.authors }}</p>
            {% endif %}
            {% if publication.doi %}
              <a class="doi-link" href="https://doi.org/{{ publication.doi }}" target="_blank" rel="noopener">DOI {{ publication.doi }}</a>
            {% endif %}
          </article>
        {% endfor %}
      </div>
    </section>
  {% endfor %}
</section>
