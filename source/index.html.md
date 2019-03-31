---
title: TMS Webapp Boilerplate

# language_tabs: # must be one of https://git.io/vQNgJ
#   - javascript

toc_footers:
  - <a href='https://www.highradius.com'>Highradius</a>


includes:
  # - doc/es6
  - doc/best-practice-js
  - doc/react-redux
  

search: true
---

# Introduction

This theme project is designed to get you up and running with a bunch of awesome front-end technologies.

The primary goal of this project is to provide a stable foundation upon which to build modern web appliications based on React, Redux and Material Design UI.  

Its purpose is to provide a set of tools intended to make front-end development robust, easy, and, most importantly, fun.

We have language bindings JavaScript! You can view code examples in the dark area to the right.


## Technologies
It features the following technologies:


- [React 16](https://github.com/facebook/react)
- [Redux 4](https://github.com/redux-saga/redux-saga) for State Management
- [React Router 4](https://github.com/ReactTraining/react-router)
- [Webpack 4](https://github.com/webpack/webpack) as Bundler
- [Hot-reloading](https://webpack.github.io/docs/hot-module-replacement.html)
- [Material UI design](https://www.google.com/design/spec/material-design/introduction.html)
- [SASS/SCSS](https://sass-lang.com/) as CSS Preprocessor
- [PostCSS](https://sass-lang.com/) for transforming CSS to JavaScript
- [CSS-in-JS](https://cssinjs.org/) for writing CSS in JS
- [React Scrollbar](https://github.com/malte-wessel/react-custom-scrollbars) for slim scrollbar on Windows
- [Axios](https://github.com/axios/axios) as HTTP Request Library.
- [Redux Saga](https://github.com/redux-saga/redux-saga) redux middleware for Asynchronous API Request.
- [Reselect](https://github.com/reduxjs/reselect) selector library for Redux
- [Polyglot](http://airbnb.io/polyglot.js/) for Internationalization
- [ESLint](http://eslint.org/) for JS and JSX
- [Jest](https://facebook.github.io/jest) for Unit Testing
- [NPM](https://yarnpkg.com/en/) as Package Manager

## Browser Support

It has tested on the following browsers including Mobile Safari and Mobile Chrome.

![Chrome](images/browser/chrome_48x48.png) | ![Firefox](images/browser/firefox_48x48.png) | ![Safari](images/browser/safari_48x48.png) | ![Opera](images/browser/opera_48x48.png) | ![Edge](images/browser/edge_48x48.png) | ![IE](images/browser/internet-explorer_48x48.png) |
--- | --- | --- | --- | --- | --- |
Latest ✔ | Latest ✔ | Latest ✔ | Latest ✔ | Latest ✔ | 11 ✔ |

## UI Design

The UI is fully Responsive and adapt to any possible screen size.

It uses the Flexbox Layout officially called [CSS Flexible Box Layout Module](https://www.w3.org/TR/css-flexbox/). 

Flexbox is new layout module in CSS3 made to improve the items align, directions and order in the container even when they are with dynamic or even unknown size. The prime characteristic of the flex container is the ability to modify the width or height of its children to fill the available space in the best possible way on different screen sizes.

For large scale layout the new [CSS Grid Layout Module](https://www.w3.org/TR/css-grid/) will be a better choice in the near future, when CSS Grid Layouts have full browser support. Browser support is increasing all the time; we can check out [Can I Use](https://caniuse.com/#search=css%20grid%20layout) for the most up to date information.

We will be able to take the combined advantages of each and create the most efficient and interesting UI designs.

## CSS Preprocessor

We use [Sass](https://sass-lang.com/) and [CSS-in-JS](https://cssinjs.org) as Css preprocessor. 

<aside class="notice">
  CSS-in-JS is still in alpha. But it is highly recommend for styling components and creating themes. This is the future... It unlocks many great features (theme nesting, dynamic styles, etc.)
</aside>


## UI Framework

We use [Material UI React](https://material-ui.com) from [Creative Tim](https://www.creative-tim.com) as UI Framework.

Material-UI is an MIT-licensed open source project. It's an independent project with ongoing development. We use Material UI version 3.9.2 in this project.

## File Structure

* Structure application by features
* Feature is a vertical slice through application layers
* There should be some value when feature is done
* Organizing files by feature allows for quicker deletion/refactoring

This project uses Folder By Feature structure to organise files by placing everything that is unique to one area of the code together. For instance, if we were making a login feature, we would have a folder for Login and in this folder we would have our login components, actions, reducers, selectors, etc. This arranges our code by what the code’s mission is and how it contributes to the overall goal of the project rather than the technology.

### Benefits of this model

<aside class="notice">
  Code is structured in a way that reflects purpose. This makes it easier to find files and know where things belong. Additionally, it helps clarify how a bit of code contributes to the overall goals of an application.
</aside>
<aside class="notice">
  Code is easier to refactor. If a feature has one entry point, it’s clear that removing the feature will have limited impact on the rest of the system. Additionally, if changes are made to a login feature, they should have no impact on a any other feature.
</aside>
<aside class="notice">
  Write features that do one thing and do it well. Write features to work together.
</aside>


[Why React developers should modularize their applications?](https://medium.com/@alexmngn/why-react-developers-should-modularize-their-applications-d26d381854c1)

### Application File Structure

```
.
├── app                         [ App root directory (./src/app) ]
│   ├── core                    [ Core utilities & redux middlewares ]
│   │   ├── util
│   │   └── middleware
│   ├── i18n                    [ Internationalisation files ]
│   └── module                  [ Application modules ]
├── media                       [ Assets like images ]
├── sass                        [ Sass files ]
├── App.jsx                     [ App component ]
├── Index.jsx                   [ Entry point ]
├── Routing.jsx                 [ Routing ]
├── Saga.js                     [ Root Saga Watcher ]
├── State.js                    [ Root Reducer & initial State ]
└── Store.js                    [ Redux Store ]
```

### Module File Structure 

Module can be a feature or component. 

```
.
└── module                      [ Root directory for modules (./src/app/module) ]
    └── sample                  [ Sample module ] 
        ├── Sample.jsx          [ Container Component ]
        ├── SampleView.jsx      [ Presentational Component ]
        ├── SampleStyle.js      [ CSS-in-JS ]
        ├── sample.scss         [ Sass Stylesheet ]
        ├── SampleState.js      [ Redux state & Reducer ]
        ├── SampleAction.js     [ Redux Action ]
        ├── SampleSaga.js       [ Redux Saga Worker ]
        ├── SampleService.js    [ Api service ]
        └── SampleSelector.js   [ Selectors ]
```

## Internationalization
This project uses [Airbnb Polyglot](http://airbnb.io/polyglot.js/) framework for internationalization. PolyglotJS is a tiny I18n helper library written in JavaScript. It provides a simple solution for interpolation and pluralization. Internatinalisation is decoupled from application by handling it through Redux. Internationalization data will be store in redux store and can be switch to any language by dispatching Action from any component. It removes any coupling with Polyglot and makes the component / module reusable.



