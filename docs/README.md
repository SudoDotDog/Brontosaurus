# Brontosaurus

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus)

:whale: Brontosaurus Auth

## Intro

This repository is responsible for docker image build and release for Brontosaurus components

## Host

To host the docker image for `Brontosaurus-Server` and `Brontosaurus-Portal` locally on your 8080 port

```sh
make DB="${host of your mongodb instance}" # production env
make sh-red DB="${host of your mongodb instance}" # development red
make sh-portal DB="${host of your mongodb instance}" # development portal
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

You can also build `portal` or `red` individually

```sh
make build-portal # Build portal
make build-red # Build red
```

Have fun.

## Status

### UI Integrate

[Brontosaurus React](https://github.com/SudoDotDog/Brontosaurus-React)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-React.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-React)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-React/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-React)
[![npm version](https://badge.fury.io/js/%40brontosaurus%2Freact.svg)](https://badge.fury.io/js/%40brontosaurus%2Freact)
[![downloads](https://img.shields.io/npm/dm/@brontosaurus/react.svg)](https://www.npmjs.com/package/@brontosaurus/react)

[Brontosaurus Web](https://github.com/SudoDotDog/Brontosaurus-Web)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-Web.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-Web)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Web/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Web)
[![npm version](https://badge.fury.io/js/%40brontosaurus%2Fweb.svg)](https://badge.fury.io/js/%40brontosaurus%2Fweb)
[![downloads](https://img.shields.io/npm/dm/@brontosaurus/web.svg)](https://www.npmjs.com/package/@brontosaurus/web)

### Server Integrate

[Brontosaurus Node](https://github.com/SudoDotDog/Brontosaurus-Node)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-Node.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-Node)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Node/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Node)
[![npm version](https://badge.fury.io/js/%40brontosaurus%2Fnode.svg)](https://badge.fury.io/js/%40brontosaurus%2Fnode)
[![downloads](https://img.shields.io/npm/dm/@brontosaurus/node.svg)](https://www.npmjs.com/package/@brontosaurus/node)

[Brontosaurus Init](https://github.com/SudoDotDog/Brontosaurus-Init)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-Init.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-Init)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Init/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Init)

### Core

[Brontosaurus Definition](https://github.com/SudoDotDog/Brontosaurus-Definition)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-Definition.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-Definition)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Definition/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Definition)
[![npm version](https://badge.fury.io/js/%40brontosaurus%2Fdefinition.svg)](https://badge.fury.io/js/%40brontosaurus%2Fdefinition)
[![downloads](https://img.shields.io/npm/dm/@brontosaurus/definition.svg)](https://www.npmjs.com/package/@brontosaurus/definition)

[Brontosaurus Core](https://github.com/SudoDotDog/Brontosaurus-Core)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-Core.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-Core)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Core/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Core)
[![npm version](https://badge.fury.io/js/%40brontosaurus%2Fcore.svg)](https://badge.fury.io/js/%40brontosaurus%2Fcore)
[![downloads](https://img.shields.io/npm/dm/@brontosaurus/core.svg)](https://www.npmjs.com/package/@brontosaurus/core)

[Brontosaurus DB](https://github.com/SudoDotDog/Brontosaurus-DB)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-DB.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-DB)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-DB/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-DB)
[![npm version](https://badge.fury.io/js/%40brontosaurus%2Fdb.svg)](https://www.npmjs.com/package/@brontosaurus/db)
[![downloads](https://img.shields.io/npm/dm/@brontosaurus/db.svg)](https://www.npmjs.com/package/@brontosaurus/db)

### Service

[Brontosaurus Server](https://github.com/SudoDotDog/Brontosaurus-Server)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-Server.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-Server)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Server/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Server)

[Brontosaurus Mint](https://github.com/SudoDotDog/Brontosaurus-Mint)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-Mint.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-Mint)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Mint/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Mint)

[Brontosaurus Red](https://github.com/SudoDotDog/Brontosaurus-Red)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-Red.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-Red)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Red/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Red)

[Brontosaurus Portal](https://github.com/SudoDotDog/Brontosaurus-Portal)

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus-Portal.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus-Portal)
[![codecov](https://codecov.io/gh/SudoDotDog/Brontosaurus-Portal/branch/master/graph/badge.svg)](https://codecov.io/gh/SudoDotDog/Brontosaurus-Portal)
