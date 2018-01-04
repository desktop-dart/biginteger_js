# bignumber_js

Facade for [BigInteger.js](https://github.com/peterolson/BigInteger.js) Javascript library. Provides
big number support for Dart.

# Documentation

Javascript documentation can be reached [here](https://github.com/peterolson/BigInteger.js/blob/master/README.md).

# How to generate the facade?

In case you want to update to a new version of BigInteger.js or use a different version, do the following
steps:

Get the [BigInteger.min.js](https://raw.githubusercontent.com/peterolson/BigInteger.js/master/BigInteger.min.js).

Get the [BigInteger.d.ts](https://raw.githubusercontent.com/peterolson/BigInteger.js/master/BigInteger.d.ts).

```bash
dart_js_facade_gen BigInteger.d.ts > biginteger_js.dart
```

Command to install `dart_js_facade_gen`,

```bash
npm install -g dart_js_facade_gen
```