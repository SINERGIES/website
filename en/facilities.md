---
layout: default
title: Research facilities
lang: en
permalink: /en/facilities/
---

<section class="page-hero"><h1>Research facilities</h1><p>Shared environments connecting research, clinical work, engineering and education.</p></section>
<section class="page-content platforms-page"><div class="platform-grid">
  {% for platform in site.data.platforms %}<article class="platform-card" id="{{ platform.slug }}"><p class="eyebrow">{{ platform.location }}</p><h2>{{ platform.title_en }}</h2><p>{{ platform.summary_en }}</p><h3>Main resources</h3><ul>{% for item in platform.equipment_en %}<li>{{ item }}</li>{% endfor %}</ul><div class="platform-links">{% if platform.website_url %}<a class="text-link" href="{{ platform.website_url }}" target="_blank" rel="noopener">Facility website</a>{% endif %}<a class="text-link" href="{{ platform.source_url }}" target="_blank" rel="noopener">Historical information</a></div></article>{% endfor %}
</div><p class="source-note">These descriptions are condensed from the former SINERGIES website. Equipment and access information will be verified with facility managers.</p></section>
