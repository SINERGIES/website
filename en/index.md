---
layout: default
title: SINERGIES Laboratory
lang: en
permalink: /en/
---

<section class="hero compact-hero" id="home">
  <div class="hero-copy">
    <p class="eyebrow hero-eyebrow">Science · Health · Society</p>
    <h1>Connecting knowledge to transform health.</h1>
    <p class="hero-subtitle">Integrated care, nanomedicine, artificial intelligence and engineering for deeply human research.</p>
    <a class="button hero-button" href="#research">Explore our research</a>
    <div class="hero-stats" aria-label="Key figures">
      <div><strong>3</strong><span>research teams</span></div>
      <div><strong>3</strong><span>cross-cutting themes</span></div>
      <div><strong>1</strong><span>master's programme</span></div>
    </div>
  </div>
  <div class="hero-media">
    <img src="{{ '/assets/img/header-laboratory-v2.jpg' | relative_url }}" alt="Laboratory research environment">
  </div>
</section>

<section class="section axes-section" id="research">
  <div class="section-heading stacked">
    <p class="eyebrow">Our work</p>
    <h2>Research structure</h2>
    <p>SINERGIES brings physicists, chemists, biologists, engineers and clinicians together around translational health projects.</p>
  </div>
  <div class="axis-group">
    <h3>Research teams</h3>
    <div class="axis-grid research-axis-grid">
      <article class="axis-card"><span>01</span><h4>Integrated and personalised care</h4><p>Care pathways, clinical epidemiology and health data supporting personalised care.</p></article>
      <article class="axis-card"><span>02</span><h4>Biomarkers and therapeutic targets</h4><p>Biological signatures and target validation, from mechanisms to clinical research.</p></article>
      <article class="axis-card"><span>03</span><h4>Engineering for health</h4><p>Materials, microdevices, imaging and instrumentation for diagnosis and care.</p></article>
    </div>
  </div>
  <div class="axis-group transversal-group">
    <h3>Cross-cutting research themes</h3>
    <div class="axis-grid transversal-axis-grid">
      <article class="axis-card"><span>01</span><h4>Artificial intelligence</h4><p>Models, machine learning and biostatistics for biomedical data.</p></article>
      <article class="axis-card"><span>02</span><h4>Clinical research</h4><p>Methods, protocols and support for translating evidence into patient benefit.</p></article>
      <article class="axis-card"><span>03</span><h4>2D, 3D and 4D imaging</h4><p>Multimodal imaging protocols supporting research and care pathways.</p></article>
    </div>
  </div>
</section>

<section class="section projects-section" id="projects">
  <div class="section-heading row-heading">
    <div><p class="eyebrow">Projects</p><h2>Current laboratory projects</h2></div>
  </div>
  <div class="project-grid">
    {% assign projects = site.projects | where: "status", "En cours" | sort: "start_year" | reverse %}
    {% for project in projects limit:3 %}
      <article class="project-card">
        <p class="project-meta">Ongoing{% if project.start_year %} · {{ project.start_year }}{% endif %}</p>
        <h3>{{ project.title }}</h3>
        <p>{{ project.summary }}</p>
        <a href="{{ project.url | relative_url }}">View project</a>
      </article>
    {% endfor %}
  </div>
  <p class="translation-note">Project and news detail pages remain in their source language while approved translations are prepared.</p>
</section>

<section class="section about-section" id="sitemap">
  <div class="about-intro"><p class="eyebrow">Explore SINERGIES</p><h2>Laboratory resources</h2></div>
  <div class="quick-link-grid">
    <a href="{{ '/en/organisation/' | relative_url }}"><strong>Organisation</strong><span>Governance and scientific structure</span></a>
    <a href="{{ '/en/members/' | relative_url }}"><strong>Members</strong><span>Directory and alumni network</span></a>
    <a href="{{ '/en/facilities/' | relative_url }}"><strong>Facilities</strong><span>Shared research equipment</span></a>
    <a href="{{ '/en/publications/' | relative_url }}"><strong>Publications</strong><span>Research output by year</span></a>
  </div>
</section>
