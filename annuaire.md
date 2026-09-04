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
  <nav class="subpage-nav" aria-label="Rubriques de l'annuaire">
    <a href="#membres">Membres actuels</a>
    <a href="#alumni">Alumni</a>
  </nav>
  <div class="section-heading stacked compact" id="membres">
    <p class="eyebrow">Équipe actuelle</p>
    <h2>Membres</h2>
  </div>
  <div class="directory-list">
    {% assign people = site.people | sort: "title" %}
    {% for member in people %}
      <article id="{{ member.title | slugify: 'latin' }}">
        <h2><a href="{{ member.url | relative_url }}">{{ member.title }}</a></h2>
        <p>{{ member.role }}</p>
        <span>{{ member.team }}</span>
      </article>
    {% endfor %}
  </div>

  <section class="alumni-section" id="alumni">
    <div class="section-heading stacked compact">
      <p class="eyebrow">Réseau SINERGIES</p>
      <h2>Alumni</h2>
      <p>Cette rubrique accueillera prochainement les anciennes et anciens membres du laboratoire.</p>
    </div>
    {% if site.data.alumni.members and site.data.alumni.members != empty %}
      <div class="directory-list">
        {% for member in site.data.alumni.members %}
          <article>
            <h3>{{ member.name }}</h3>
            {% if member.role %}<p>{{ member.role }}</p>{% endif %}
            {% if member.period %}<span>{{ member.period }}</span>{% endif %}
          </article>
        {% endfor %}
      </div>
    {% else %}
      <div class="empty-state">Les premières fiches alumni seront ajoutées après validation des informations.</div>
    {% endif %}
  </section>
</section>
