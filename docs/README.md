# Brontosaurus

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus)

:whale: Brontosaurus Auth

## Introduction

This repository is responsible for docker image build and release for Brontosaurus components

## Submodule and SDK

See [Submodule and SDK Status and List](/docs/submodule-sdk.md) here

## Image

Run portal on server

```sh
# Monitor
docker run -it -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8080 --name <Name> brontosaurus/core:<Version>
# Daemon
docker run -dit -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8080 --name <Name> brontosaurus/core:<Version>
```

Run red on server

```sh
# Monitor
docker run -it -e BRONTOSAURUS_DATABASE="<Database>" PORTAL_PATH="<Portal>" -p <TargetPort>:9000 --name <Name> brontosaurus/red:<Version>
# Daemon
docker run -dit -e BRONTOSAURUS_DATABASE="<Database>" PORTAL_PATH="<Portal>" -p <TargetPort>:9000 --name <Name> brontosaurus/red:<Version>
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
