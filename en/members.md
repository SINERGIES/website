---
layout: default
title: Members
lang: en
permalink: /en/members/
---

<section class="page-hero"><h1>Laboratory members</h1><p>Directory of SINERGIES members and its developing alumni network.</p></section>
<section class="page-content directory-page">
  <nav class="subpage-nav" aria-label="Directory sections"><a href="#members">Current members</a><a href="#alumni">Alumni</a></nav>
  <div class="directory-list" id="members">
    {% assign people = site.people | sort: "title" %}
    {% for member in people %}
      {% assign role_en = site.data.profile_translations.roles[member.role] | default: member.role %}
      {% assign team_en = site.data.profile_translations.teams[member.team] | default: member.team %}
      <article><h2><a href="{{ '/en/members/' | append: member.slug | append: '/' | relative_url }}">{{ member.title }}</a></h2><p>{{ role_en }}</p><span>{{ team_en }}</span></article>
    {% endfor %}
  </div>
  <section class="alumni-section" id="alumni">
    <div class="section-heading stacked compact"><p class="eyebrow">SINERGIES network</p><h2>Alumni</h2><p>Former laboratory members will be added here after their information has been reviewed.</p></div>
    <div class="empty-state">The first alumni profiles will be published after validation.</div>
  </section>
  <p class="translation-note">English profiles are translated from the information approved by each member.</p>
</section>
