# Installation 

## Install Angular
Head over to https://angular.dev/installation to download Angular. Angular uses `ng` as a command-line-interface.

Install the "Angular Language Service" VS-Code extension.

## Set up a new project
Type in a terminal `ng new AngularDemo` where `AngularDemo` is your project's name. Clear the template in `app.component.ts` and replace it with:

```html
<h1>Hello World!</h1>
```

## Set up Bootstrap
Run the following command to set up bootstrap:
```
npm i bootstrap
```

in `angular.json` unter dem ersten `"styles"` Bootstrap adden:

```json
"styles": [
    "src/styles.css",
    "node_modules/bootstrap/dist/css/bootstrap.min.css"
]
```