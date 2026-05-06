---
layout: default
title: Actualités
permalink: /actualites/
---

<section class="page-hero">
  <h1>Actualités</h1>
  <p>Vie scientifique du laboratoire, événements, publications remarquées et appels à participation.</p>
</section>

<section class="page-content archive-list">
  {% for post in site.posts %}
    <article>
      <p class="meta">{{ post.date | date: "%d/%m/%Y" }}</p>
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p>{{ post.excerpt | strip_html }}</p>
    </article>
  {% endfor %}
</section>
