---
layout: default
title: Annuaire du laboratoire
permalink: /annuaire/
---

<section class="page-hero">
  <h1>Annuaire du laboratoire</h1>
  <p>Répertoire des membres, responsables d'équipes, axes transversaux et fonctions d'appui.</p>
</section>

<section class="page-content directory-page">
  <div class="directory-list">
    {% assign people = site.people | sort: "title" %}
    {% for member in people %}
      <article id="{{ member.title | slugify: 'latin' }}">
        <h2><a href="{{ member.url | relative_url }}">{{ member.title }}</a></h2>
        <p>{{ member.role }}</p>
        <span>{{ member.team }}</span>
        {% if member.email %}
          <a href="mailto:{{ member.email }}">{{ member.email }}</a>
        {% endif %}
      </article>
    {% endfor %}
  </div>
</section>
