---
layout: default
title: Organisation
lang: en
permalink: /en/organisation/
---

<section class="page-hero"><h1>Organisation</h1><p>Governance, research teams, cross-cutting themes and support functions.</p></section>
<section class="page-content org-page">
  <div class="org-chart simple-chart">
    <section class="org-section-box org-section-main">
      <h2>Laboratory leadership</h2>
      <div class="org-person-grid compact">
        {% for person in site.data.organigrammes.governance.direction %}<p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>{% endfor %}
      </div>
    </section>
    <section class="org-section-box"><h2>Research teams</h2><div class="org-person-grid compact">{% for person in site.data.organigrammes.governance.teams %}<p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>{% endfor %}</div></section>
    <section class="org-section-box"><h2>Cross-cutting themes</h2><div class="org-person-grid compact">{% for person in site.data.organigrammes.governance.axes %}<p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>{% endfor %}</div></section>
  </div>
  <p class="translation-note">Academic titles and individual roles are retained in their official French form.</p>
</section>
