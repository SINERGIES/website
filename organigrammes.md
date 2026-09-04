---
layout: default
title: Organisation
permalink: /organisation/
---

<section class="page-hero">
  <h1>Organisation</h1>
  <p>Gouvernance, organisation scientifique et organigramme complet du laboratoire.</p>
</section>

<section class="page-content org-page">
  <div class="org-tabs" role="tablist" aria-label="Vues des organigrammes">
    <button class="org-tab is-active" type="button" role="tab" aria-selected="true" aria-controls="org-conseil-direction" data-org-tab="org-conseil-direction">Conseil de direction</button>
    <button class="org-tab" type="button" role="tab" aria-selected="false" aria-controls="org-conseil-laboratoire" data-org-tab="org-conseil-laboratoire">Conseil de laboratoire</button>
    <button class="org-tab" type="button" role="tab" aria-selected="false" aria-controls="org-organisation" data-org-tab="org-organisation">Organisation scientifique</button>
    <button class="org-tab" type="button" role="tab" aria-selected="false" aria-controls="org-complet" data-org-tab="org-complet">Organigramme complet</button>
  </div>

  {% assign director = site.data.organigrammes.governance.direction | first %}

  <div class="org-panel is-active" id="org-conseil-direction" role="tabpanel">
    <div class="org-chart simple-chart">
      <div class="org-section-box org-section-main">
        <h2>Direction</h2>
        <div class="org-level org-level-root">
          {% for person in site.data.organigrammes.governance.direction limit:1 %}
            <article class="org-node org-node-primary">
              <span>{{ person.role | split: " - " | first }}</span>
              <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
            </article>
          {% endfor %}
        </div>
        <div class="org-level org-level-branch">
          {% for person in site.data.organigrammes.governance.direction %}
            {% unless forloop.first %}
              <article class="org-node">
                <span>{{ person.role | split: " - " | first }}</span>
                <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
              </article>
            {% endunless %}
          {% endfor %}
        </div>
      </div>

      <div class="org-duo-grid">
        <section class="org-section-box">
          <h2>Responsables d'équipes</h2>
          <div class="org-stack-grid org-stack-vertical">
            {% for person in site.data.organigrammes.governance.teams %}
              <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
            {% endfor %}
          </div>
        </section>
        <section class="org-section-box">
          <h2>Responsables d'axes</h2>
          <div class="org-stack-grid org-stack-vertical">
            {% for person in site.data.organigrammes.governance.axes %}
              <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
            {% endfor %}
          </div>
        </section>
      </div>
    </div>
  </div>

  <div class="org-panel" id="org-conseil-laboratoire" role="tabpanel" hidden>
    <div class="org-chart simple-chart">
      <div class="org-section-box org-section-main">
        <h2>Conseil de direction</h2>
        <div class="org-level org-level-root">
          {% for person in site.data.organigrammes.governance.direction limit:1 %}
            <article class="org-node org-node-primary">
              <span>{{ person.role | split: " - " | first }}</span>
              <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
            </article>
          {% endfor %}
        </div>
        <div class="org-level org-level-branch compact-top">
          {% for person in site.data.organigrammes.governance.direction %}
            {% unless forloop.first %}
              <article class="org-node">
                <span>{{ person.role | split: " - " | first }}</span>
                <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
              </article>
            {% endunless %}
          {% endfor %}
        </div>
        <div class="org-duo-grid">
          <section class="org-inner-box">
            <h3>Responsables d'équipes</h3>
            <div class="org-stack-grid org-stack-vertical">
              {% for person in site.data.organigrammes.governance.teams %}
                <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
              {% endfor %}
            </div>
          </section>
          <section class="org-inner-box">
            <h3>Responsables d'axes</h3>
            <div class="org-stack-grid org-stack-vertical">
              {% for person in site.data.organigrammes.governance.axes %}
                <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
              {% endfor %}
            </div>
          </section>
        </div>
      </div>

      <section class="org-section-box org-section-large">
        <h2>Représentants du personnel</h2>
        <div class="org-person-grid compact">
          {% for person in site.data.organigrammes.governance.council %}
            <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
          {% endfor %}
        </div>
      </section>
    </div>
  </div>

  <div class="org-panel" id="org-complet" role="tabpanel" hidden>
    <div class="complete-org">
      {% for team in site.data.organigrammes.complete.teams %}
        <article class="complete-team">
          <header>
            <h2>{{ team.title }}</h2>
            <div>
              {% for person in team.lead %}
                <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
              {% endfor %}
            </div>
          </header>
          <div class="complete-groups">
            {% for group in team.groups %}
              <section>
                <h3>{{ group.title }}</h3>
                <div class="org-person-grid compact">
                  {% for person in group.people %}
                    <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
                  {% endfor %}
                </div>
              </section>
            {% endfor %}
          </div>
        </article>
      {% endfor %}
    </div>
  </div>

  <div class="org-panel" id="org-organisation" role="tabpanel" hidden>
    <div class="org-chart organisation-chart">
      <section class="org-section-box org-section-main">
        <h2>3 équipes</h2>
        <div class="org-top-grid teams-grid">
          {% for team in site.data.organigrammes.organisation.teams %}
            <article class="org-node">
              <span>{{ team.title }}</span>
              {% for person in team.lead %}
                <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
              {% endfor %}
            </article>
          {% endfor %}
        </div>
      </section>

      <section class="org-section-box org-section-main">
        <h2>3 axes transversaux de recherche</h2>
        <div class="org-axis-stack">
          {% for person in site.data.organigrammes.organisation.axes %}
            <article class="org-node axis-node">
              <span>{{ person.role | remove: "Responsable " }}</span>
              <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
            </article>
          {% endfor %}
        </div>
      </section>

      <section class="org-section-box org-section-compact">
        <h2>Pôle administratif / projets</h2>
        <div class="org-stack-grid">
          {% for person in site.data.organigrammes.organisation.support %}
            <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
          {% endfor %}
        </div>
      </section>

      <section class="org-section-box org-section-compact org-master-section">
        <h2>Gestion du master Ingénierie de la santé</h2>
        <div class="org-stack-grid">
          {% for person in site.data.organigrammes.organisation.master %}
            <p>{% include person-link.html name=person.name %}<small>{{ person.role }}</small></p>
          {% endfor %}
        </div>
      </section>
    </div>
  </div>
</section>

<script>
  document.querySelectorAll('[data-org-tab]').forEach((tab) => {
    tab.addEventListener('click', () => {
      document.querySelectorAll('[data-org-tab]').forEach((item) => {
        item.classList.toggle('is-active', item === tab);
        item.setAttribute('aria-selected', item === tab ? 'true' : 'false');
      });
      document.querySelectorAll('.org-panel').forEach((panel) => {
        const active = panel.id === tab.dataset.orgTab;
        panel.classList.toggle('is-active', active);
        panel.hidden = !active;
      });
    });
  });
</script>
