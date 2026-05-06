---
layout: default
title: Projets
permalink: /projets/
---

<section class="page-hero">
  <h1>Projets du laboratoire</h1>
  <p>Découvrez les projets portés ou accompagnés par le laboratoire SINERGIES, de l'intelligence artificielle en santé à l'ingénierie des dispositifs médicaux.</p>
</section>

<section class="page-content archive-list">
  {% assign projects = site.projects | sort: "start_year" | reverse %}
  {% for project in projects %}
    <article>
      <p class="meta">{{ project.status }}{% if project.start_year %} · {{ project.start_year }}{% endif %}</p>
      <h2><a href="{{ project.url }}">{{ project.title }}</a></h2>
      <p>{{ project.summary }}</p>
      {% if project.team %}
        <span>{{ project.team }}</span>
      {% endif %}
    </article>
  {% endfor %}
</section>
