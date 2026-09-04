---
layout: default
title: Plateformes
permalink: /plateformes/
---

<section class="page-hero">
  <h1>Plateformes</h1>
  <p>Des équipements et environnements partagés pour relier recherche, clinique, ingénierie et formation.</p>
</section>

<section class="page-content platforms-page">
  <div class="platform-grid">
    {% for platform in site.data.platforms %}
      <article class="platform-card" id="{{ platform.slug }}">
        <p class="eyebrow">{{ platform.location }}</p>
        <h2>{{ platform.title }}</h2>
        <p>{{ platform.summary }}</p>
        <h3>Principales ressources</h3>
        <ul>
          {% for item in platform.equipment %}<li>{{ item }}</li>{% endfor %}
        </ul>
        <div class="platform-links">
          {% if platform.website_url %}<a class="text-link" href="{{ platform.website_url }}" target="_blank" rel="noopener">Site de la plateforme</a>{% endif %}
          <a class="text-link" href="{{ platform.source_url }}" target="_blank" rel="noopener">Informations historiques</a>
        </div>
      </article>
    {% endfor %}
  </div>
  <p class="source-note">Les descriptions ont été reprises de l’ancien site SINERGIES puis condensées. Les équipements et modalités d’accès seront vérifiés avec les responsables de plateforme.</p>
</section>
