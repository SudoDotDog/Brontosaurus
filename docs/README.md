# Brontosaurus

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus)

:whale: Brontosaurus Auth

## Introduction

This repository is responsible for docker image build and release for Brontosaurus components

## Submodule

See [submodule status and list](/docs/submodule.md) here

## Image

Run portal on server

```sh
docker run -it -e BRONTOSAURUS_DATABASE=<Database> -p <TargetPort>:8080 --name <Name> brontosaurus/core:<Version>
```

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
