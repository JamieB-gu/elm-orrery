# Elm Orrery

An Elm model (no pun intended!) of the Solar System. [Wikipedia](https://en.wikipedia.org/wiki/Orrery) has more on the concept of an Orrery.

This project is bootstrapped with [Create Elm App](https://github.com/halfzebra/create-elm-app).

## Available scripts

In the project directory you can run:

### `elm-app build`

Builds the app for production to the `build` folder.

The build is minified, and the filenames include the hashes.
Your app is ready to be deployed!

### `elm-app start`

Runs the app in the development mode.

The browser should open automatically to [http://localhost:3000](http://localhost:3000). If the browser does not open, you can open it manually and visit the URL.

The page will reload if you make edits.
You will also see any lint errors in the console.

You may change the listening port number by using the `PORT` environment variable. For example type `PORT=8000 elm-app start ` into the terminal/bash to run it from: [http://localhost:8000/](http://localhost:8000/).

You can prevent the browser from opening automatically,
```sh
elm-app start --no-browser
```

### `elm-app install`

Alias for [`elm install`](http://guide.elm-lang.org/get_started.html#elm-install)

Use it for installing Elm packages from [package.elm-lang.org](http://package.elm-lang.org/)

### `elm-app test`

Run tests with [node-test-runner](https://github.com/rtfeldman/node-test-runner/tree/master)

You can make test runner watch project files by running:

```sh
elm-app test --watch
```

### `elm-app eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time.

Instead, it will copy all the configuration files and the transitive dependencies (Webpack, Elm Platform, etc.) right into your project, so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point, you’re on your own.

You don’t have to use 'eject' The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However, we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

### `elm-app <elm-platform-command>`

Create Elm App does not rely on the global installation of Elm Platform, but you still can use its local Elm Platform to access default command line tools:

#### `repl`

Alias for [`elm repl`](http://guide.elm-lang.org/get_started.html#elm-repl)

#### `make`

Alias for [`elm make`](http://guide.elm-lang.org/get_started.html#elm-make)

#### `reactor`

Alias for [`elm reactor`](http://guide.elm-lang.org/get_started.html#elm-reactor)

