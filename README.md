# vue-gcloud-scaffold

Scaffold

## file structure

```
vue-moment-calendar/
  ├── *dist/
  ├── *node_modules/
  ├── {project_name}/
  |   ├── assets/
  |   |   ├── js/
  |   |   |   ├── components/
  |   |   |   ├── store/
  |   |   |   |   └── index.js
  |   |   |   ├── router/
  |   |   |   |   └── index.js
  |   |   |   ├── App.vue
  |   |   |   ├── main.js
  |   |   ├── styles/
  |   |   |   ├── _reset.scss
  |   |   |   ├── _variables.scss
  |   |   |   └── main.scss
  ├── .gitignore
  ├── app.yaml
  ├── Makefile
  ├── package.json
  ├── README.md
  ├── webpack.config.js
  └── *yarn.lock

```

Filenames denoted with an asterisk `*` are auto generated and should not be modified.

## file explanation

- `dist/` : Folder for bundled files.
  - `main.bundle.css` : Bundled CSS file.
  - `main.bundle.js` : Bundled Javascript file.
- `node_modules/` : Downloaded dependencies.
- `{project_name}/` : Main application folder.
  - `assets/` : Assets folder.
    - `js/` : Javascript folder.
      - `components/` : Vue components.
      - `store/` : Vuex store folder.
        - `index.js` : Entrypoint for Vuex store.
      - `router/` : vue-router folder.
        - `index.js` : Entrypoint for vue-router.
      - `App.vue` : Main application component.
      - `main.js` : Main application entry point for Javascript.
    - `styles/` : Styles folder.
      - `_reset.scss` : Global style reset partial.
      - `_variables.scss` : SCSS variables partial.
      - `main.scss` : Main application entry point for SCSS.
- `.gitignore` : Tells git what files not to check in.
- `app.yaml` : App engine configuration settings file.
- `Makefile` : Project Makefile. Configures project build using `make`.
- `package.json` : Project metadata and dependencies.
- `README.md` : Project README.
- `webpack.config.js` : Webpack config. Configures bundling of frontend assets.
- `yarn.lock` : Yarn lockfile.

## getting started

1. Check out this repo: `git clone https://github.com/ElijahKotyluk/vue-gcloud-scaffold`
2. Locate and open `vue-gcloud-scaffold` file directory in the command line/terminal.
3. Search the entire project for the string `{project_name}` and replace it with the desired project name, go to `package.json` and replace description and author details as well.
4. Run `make init` to install all Javascript dependencies.
5. Run `make` or `make dev` to bundle the front-end assets and run the webpack development server, then visit [http://localhost:8080](http://localhost:8080)
6. Run `make deploy` to build in production mode and deploy to google cloud(requires [Google Cloud SDK](https://cloud.google.com/sdk/docs/) to be installed in your path).

### to run subsequent times

1. `make`
