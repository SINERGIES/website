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
      <h2><a href="{{ project.url | relative_url }}">{{ project.title }}</a></h2>
      <p>{{ project.summary }}</p>
      {% if project.team %}
        {% assign project_filter_url = nil %}
        {% for team in site.teams %}
          {% if project.team == team.title %}
            {% assign project_filter_url = team.url %}
          {% endif %}
        {% endfor %}
        {% for axis in site.axes %}
          {% if project.team == axis.title %}
            {% assign project_filter_url = axis.url %}
          {% endif %}
        {% endfor %}
        {% if project_filter_url %}
          <a class="archive-tag" href="{{ project_filter_url | relative_url }}">{{ project.team }}</a>
        {% else %}
          <span>{{ project.team }}</span>
        {% endif %}
      {% endif %}
    </article>
  {% endfor %}
</section>
