# Laboratoire SINERGIES

Site statique Jekyll du laboratoire SINERGIES. Les informations utiles à la reprise du projet et les travaux restant à réaliser sont regroupés dans [`HANDOFF.md`](HANDOFF.md).

## Prérequis

- Git
- Ruby et Bundler

Les dépendances générées dans `vendor/`, le site compilé dans `_site/` et le cache Jekyll ne sont pas versionnés.

## Première installation

```bash
bundle config set --local path vendor/bundle
bundle install
```

## Lancer le site en local

```bash
./scripts/serve-local
```

Si le port `4000` est déjà occupé :

```bash
PORT=4001 ./scripts/serve-local
```

Le site est ensuite visible à l'adresse `http://127.0.0.1:4000/sinergies/`.

## Vérifier la compilation

```bash
BUNDLE_PATH=vendor/bundle BUNDLE_DISABLE_SHARED_GEMS=true bundle exec jekyll clean
BUNDLE_PATH=vendor/bundle BUNDLE_DISABLE_SHARED_GEMS=true bundle exec jekyll build
```

## Organisation des contenus

- `_data/home.yml` : page d'accueil, organisation et partenaires.
- `_data/navigation.yml` : navigation principale.
- `_data/organigrammes.yml` : gouvernance et organigrammes.
- `_people/` : fiches des membres.
- `_teams/` et `_axes/` : équipes et axes de recherche.
- `_projects/` : projets.
- `_posts/` : actualités, avec un nom au format `AAAA-MM-JJ-titre.md`.
- `_publications/` : bibliographie ; chaque fichier contient notamment `title`, `authors`, `journal`, `year` et `doi`.
- `master-2.md` : page du Master Ingénierie de la santé.

## Publication

Le dépôt est configuré comme un site de projet GitHub Pages avec `baseurl: /sinergies`. En cas de transfert du dépôt ou d'utilisation d'un domaine personnalisé, mettre à jour `url` et `baseurl` dans `_config.yml`, puis vérifier la configuration dans **Settings > Pages** sur GitHub.
