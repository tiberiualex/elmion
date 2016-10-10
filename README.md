# elmion
Elmion is a very tiny boilerplate for writing Elm apps, it includes only the bare minimum:
* Elm compiler
* SCSS compiler
* Dev server with live reloading
* Basic app structure

### Install

First, you need to install Elm globally:

`npm install -g elm`

You also have to install the `onchange` module globally:

`npm install -g onchange`

Open the elmion directory and run:

`npm install`

Next, install the Elm packages:

`elm package install`

### Usage

Running `npm run watch` will compile the Elm app, compile the SCSS code, start a local server, load the app into your default browser and watch file changes.

Other tasks available:
* `npm run elm` will compile the Elm app
* `npm run scss` will compile the SCSS code
* `npm run build` will compile both the Elm and SCSS code
* `npm run watch:elm` will watch any changes to your Elm app and recompile the code
* `npm run watch:scss` will watch any changes to your SCSS code and recompile the code
* `npm run serve` will start the local dev server and reload when any changes are made to the build folder

### To Do

* Add JS minification
* Add more tasks

### License

MIT
