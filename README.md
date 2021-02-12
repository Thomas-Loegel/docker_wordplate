# 🥝 Kiwiplate de WordPress

Voici la `Kiwiplate` made in Alsacréations pour nos projets `WordPress` standard !  
  
Elle contient la stack suivante :

- [Docker](https://www.docker.com/products/docker-desktop)
- [Wordplate](https://github.com/wordplate/wordplate)
- [Timber](https://timber.github.io/docs/)
- [Tailwind](https://tailwindcss.com/)

## Pré-requis 🔧

### Docker

- Installer [Docker](https://www.docker.com/products/docker-desktop) sur votre machine
- Installer l'[extension Docker](https://marketplace.visualstudio.com/items?) pour VSCode

### Timber

- Installer l'[extension Twig](https://marketplace.visualstudio.com/items?itemName=mblode.twig-language-2) pour VSCode et suivre les instructions du plugin !

### Tailwind

- Installer l'[extension Tailwind intelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss) pour VSCode
- Installer l'[extension Tailwind Loves Sass](https://marketplace.visualstudio.com/items?itemName=sutter-nicolas.tailwind-loves-sass-snippets) pour VSCode

## Initialisation 🚀

> Renommer le ficher `.env.example` en `.env` dans le dossier `/app`

1. Lancer l'application `DockerDesktop`
2. Dans VSCode, faire un `clic droit` sur le fichier `docker-compose.yml` et choisir `Compose Up`

> ⚠️ A partir d'ici tout se fait dans le terminal, dans le dossier `/app` ⚠️

3. Lancez `composer install`
4. Lancez `npm install`
5. Lancez `npm run dev`
6. Ouvrez l'url du projet !

## Structure 🧱

🚧 Comming soon 🚧  

## Développer 💻

En bref !

* On _dev_ dans `app/public/themes/{le_nom_du_theme}`
* On _style_ dans `app/resources`
* On _script_ dans `app/resources/scripts`

Et on compile avec `npm run dev` !

- `PhpMyAdmin` est accessible à <http://localhost:8080/>
- `WordPress` est accessible à <http://localhost:1337/>
- `WordPress avec BrowserSync` est accessible à <http://localhost:3000/> (voir le message dans le Terminal)
- `Administration` est accessible à <http://localhost:1337/wordpress/wp-admin>  

> 💡 Astuce : Certaines de ces adresses sont disponibles via l'interface du DockerDesktop

Pour ajouter Vue au projet, suivre les guidelines [_Vue dans WordPress_](https://docs.google.com/document/d/1PQAL5cCQaUxN-R-Vsl0ZJn8eTKzBLPmAa9pvr3OuU_U/edit)

### DockerDesktop

- Une fois l'initialisation `Compose Up` sur le fichier `docker-compose.yml` vous n'aurez plus à le refaire
- Via l'interface du DockerDesktop vous pourrez `start` ou `stop` votre container

### Mise en recette/prod

- Lancer `npm run build`

## TODO ✏️

- Corriger l'erreur APACHE_DOCUMENT_ROOT au lancement du `compose up` (qui ne semble pas bloquante)
- Trouver comment nommer le conteneur et pouvoir en créer d'autres parallèles en gardant les actifs
- Pouvoir utiliser un vhost temporaire (pour ne pas utiliser "localhost" mais plutôt "dev.projet.com")
- gitignore de WordPlate ?
