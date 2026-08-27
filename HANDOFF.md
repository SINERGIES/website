# Reprise du site SINERGIES

## État au 27 août 2026

- Branche principale : `main`.
- Dépôt officiel du laboratoire : `https://github.com/SINERGIES/website.git`.
- Site de test GitHub Pages : `https://sinergies.github.io/website/`.
- Domaine final prévu après validation : `https://lab-sinergies.fr`.
- Générateur : Jekyll 4.2.
- La compilation locale réussit.
- Les liens et ancres internes du site généré ont été contrôlés sans erreur.
- Le dépôt contient 109 membres, 5 projets, 4 actualités et 2 883 publications.

## Sources de référence

- Accueil et partenaires : `_data/home.yml`.
- Navigation : `_data/navigation.yml`.
- Gouvernance et organigrammes : `_data/organigrammes.yml`.
- Membres : `_people/`.
- Équipes : `_teams/`.
- Axes : `_axes/`.
- Projets : `_projects/`.
- Actualités : `_posts/`.
- Publications : `_publications/` et date de mise à jour dans `_data/publications.yml`.

Éviter de créer une nouvelle liste parallèle des membres : les fiches `_people/` et l'organigramme sont les sources actuellement utilisées par les pages.

## Priorités avant mise en production

1. Valider le site de test sur `https://sinergies.github.io/website/`, notamment les liens, les ressources et l'affichage mobile.
2. Configurer `lab-sinergies.fr` seulement après validation du site de test.
3. Compléter l'identité de l'hébergeur dans `mentions-legales.md`.
4. Faire valider la déclaration d'accessibilité et réaliser un audit RGAA.
5. Faire valider les coordonnées, les membres, les responsabilités, les projets et les partenaires.
6. Ajouter le véritable calendrier d'alternance lorsqu'il est disponible.
7. Revoir la page des publications : elle charge les 2 883 entrées sur une seule page et doit être paginée ou filtrable.
8. Contrôler les publications incomplètes et les titres potentiellement dupliqués.
9. Actualiser les actualités, qui datent actuellement de 2024.
10. Ajouter une vérification automatique de la compilation et des liens sur GitHub.

## Démarrage local

```bash
bundle config set --local path vendor/bundle
bundle install
./scripts/serve-local
```

Le site est alors disponible sur `http://127.0.0.1:4000/website/`.

## Contrôle avant publication

```bash
BUNDLE_PATH=vendor/bundle BUNDLE_DISABLE_SHARED_GEMS=true bundle exec jekyll clean
BUNDLE_PATH=vendor/bundle BUNDLE_DISABLE_SHARED_GEMS=true bundle exec jekyll build
git status --short
```

Vérifier ensuite au minimum l'accueil, les organigrammes, une fiche membre, une équipe, un axe, un projet, une publication, la page Master et l'affichage mobile.

## Méthode de travail conseillée

Créer une branche par sujet, effectuer les modifications avec Codex, lancer la compilation, puis ouvrir une pull request vers `main`. Les décisions éditoriales et les tâches restantes doivent être conservées dans les tickets GitHub afin que le contexte ne dépende pas d'une conversation Codex particulière.
