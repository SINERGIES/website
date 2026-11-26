---
layout: default
title: Actualités
permalink: /actualites/
---

<section class="page-hero">
  <h1>Actualités</h1>
</section>

<section class="page-content archive-list">
  {% if site.posts == empty %}<p>De nouvelles actualités seront publiées prochainement.</p>{% endif %}
  {% for post in site.posts %}
    <article>
      <p class="meta">{{ post.date | date: "%d/%m/%Y" }}</p>
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p>{{ post.excerpt | strip_html }}</p>
    </article>
  {% endfor %}
</section>
