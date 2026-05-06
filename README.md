# Laboratoire SINERGIES

Prototype Jekyll pour la refonte du site du laboratoire.

## Lancer en local

```bash
./scripts/serve-local
```

Si le port `4000` est déjà occupé :

```bash
PORT=4001 ./scripts/serve-local
```

Le site est ensuite visible dans le navigateur à l'adresse `http://127.0.0.1:4000/`.

Pour régénérer le site après suppression de pages :

```bash
BUNDLE_PATH=vendor/bundle BUNDLE_DISABLE_SHARED_GEMS=true /usr/bin/bundle exec jekyll clean
BUNDLE_PATH=vendor/bundle BUNDLE_DISABLE_SHARED_GEMS=true /usr/bin/bundle exec jekyll build
```

Les contenus de la page d'accueil se modifient principalement dans `_data/home.yml`.
La navigation se modifie dans `_data/navigation.yml`.

## Contenus éditoriaux

- Les actualités utilisent le blog Jekyll : ajouter un fichier Markdown dans `_posts/` avec une date au format `AAAA-MM-JJ-titre.md`.
- Les publications utilisent la collection `_publications/`. Chaque publication est un fichier Markdown avec les champs `title`, `authors`, `journal`, `year`, `doi`.
- La page Master 2 dédiée se trouve dans `master-2.md`.
