# Brontosaurus

[![Build Status](https://travis-ci.org/SudoDotDog/Brontosaurus.svg?branch=master)](https://travis-ci.org/SudoDotDog/Brontosaurus)

:whale: Brontosaurus Auth

## Intro

This repository is responsible for docker image build and release for Brontosaurus components

## Host

To host the docker image for `Brontosaurus-Server` and `Brontosaurus-Portal` locally on your 8080 port

```sh
make DB="${host of your mongodb instance}" # production env
make sh-dev DB="${host of your mongodb instance}" # development env
```

Also, to host the docker image for `Brontosaurus-Server` and `Brontosaurus-Portal` locally on your 80 port

```sh
make sh-80 DB="${host of your mongodb instance}"
```

## Development

You will need `Docker`, `yarn` and `make` for this repository

## Build

To build the docker image for `Brontosaurus-Server` and `Brontosaurus-Portal`

```sh
make build
```

Have fun.

## Status

[Brontosaurus React](https://github.com/SudoDotDog/Brontosaurus-React)

[![Build Status](https://travis-ci.org/SudoDotDog/Brontosaurus-React.svg?branch=master)](https://travis-ci.org/SudoDotDog/Brontosaurus-React)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-React/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-React)
[![npm version](https://badge.fury.io/js/%40brontosaurus%2Freact.svg)](https://badge.fury.io/js/%40brontosaurus%2Freact)
[![downloads](https://img.shields.io/npm/dm/@brontosaurus/react.svg)](https://www.npmjs.com/package/@brontosaurus/react)

[Brontosaurus Definition](https://github.com/SudoDotDog/Brontosaurus-Definition)

[![Build Status](https://travis-ci.org/SudoDotDog/Brontosaurus-Definition.svg?branch=master)](https://travis-ci.org/SudoDotDog/Brontosaurus-Definition)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Definition/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Definition)
[![npm version](https://badge.fury.io/js/%40brontosaurus%2Fdefinition.svg)](https://badge.fury.io/js/%40brontosaurus%2Fdefinition)
[![downloads](https://img.shields.io/npm/dm/@brontosaurus/definition.svg)](https://www.npmjs.com/package/@brontosaurus/definition)

[Brontosaurus Core](https://github.com/SudoDotDog/Brontosaurus-Core)

[![Build Status](https://travis-ci.org/SudoDotDog/Brontosaurus-Core.svg?branch=master)](https://travis-ci.org/SudoDotDog/Brontosaurus-Core)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Core/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Core)
[![npm version](https://badge.fury.io/js/%40brontosaurus%2Fcore.svg)](https://badge.fury.io/js/%40brontosaurus%2Fcore)
[![downloads](https://img.shields.io/npm/dm/@brontosaurus/core.svg)](https://www.npmjs.com/package/@brontosaurus/core)

[Brontosaurus Red](https://github.com/SudoDotDog/Brontosaurus-Red)

[![Build Status](https://travis-ci.org/SudoDotDog/Brontosaurus-Red.svg?branch=master)](https://travis-ci.org/SudoDotDog/Brontosaurus-Red)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Red/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Red)

[Brontosaurus Portal](https://github.com/SudoDotDog/Brontosaurus-Portal)

[![Build Status](https://travis-ci.org/SudoDotDog/Brontosaurus-Portal.svg?branch=master)](https://travis-ci.org/SudoDotDog/Brontosaurus-Portal)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Portal/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Portal)
