# bignumber_js

Facade for [bignumber.js](https://github.com/MikeMcl/bignumber.js) Javascript library. Provides
big number support for Dart.

# Documentation

Javascript documentation can be reached [here](http://mikemcl.github.io/bignumber.js/).

# How to generate the facade?

In case you want to update to a new version of bignumber.js or use a different version, do the following
steps:

Get the [bignumber.min.js](https://raw.githubusercontent.com/MikeMcl/bignumber.js/master/bignumber.min.js).

Get the [bignumber.d.ts](https://raw.githubusercontent.com/MikeMcl/bignumber.js/master/bignumber.d.ts).

```bash
dart_js_facade_gen bignumber.d.ts > bignumber_js.dart
```

Command to install `dart_js_facade_gen`,

```bash
npm install -g dart_js_facade_gen
```