# Brontosaurus

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus)

:whale: Brontosaurus Auth

## Introduction

This repository is responsible for docker image build and release for Brontosaurus components.

## Resources

- [ChangeLog](/docs/change-log.md)
- [Quick Start](/docs/quick-start.md)
- [Submodule and SDK Status and List](/docs/submodule-sdk.md)

## Image

Run portal container

```sh
# Monitor
docker run -it -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8080 --name <Name> brontosaurus/core:<Version>
# Daemon
docker run -dit -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8080 --name <Name> brontosaurus/core:<Version>
```

Run red container

```sh
# Monitor
docker run -it -e BRONTOSAURUS_DATABASE="<Database>" PORTAL_PATH="<Portal>" -p <TargetPort>:9000 --name <Name> brontosaurus/red:<Version>
# Daemon
docker run -dit -e BRONTOSAURUS_DATABASE="<Database>" PORTAL_PATH="<Portal>" -p <TargetPort>:9000 --name <Name> brontosaurus/red:<Version>
```

## Host

To host the docker image for `Brontosaurus-Portal` locally on your 8080 port, `Brontosaurus-Red` locally on your 9000 port. 

```sh
make DB="${host of your MongoDB instance}" # production env
make sh-red DB="${host of your MongoDB instance}" # development red
make sh-portal DB="${host of your MongoDB instance}" # development portal
```

Also, to host the docker image for `Brontosaurus-Portal` locally on your 80 port.

```sh
make sh-80 DB="${host of your MongoDB instance}"
```

## Development

You will need `Docker`, `yarn` and `make` for this repository.

## Build

To build the docker image for `Brontosaurus-Portal` and `Brontosaurus-Red`

```sh
make build
```

You can also build `Brontosaurus-Portal` or `Brontosaurus-Red` individually.

```sh
make build-portal # Build portal
make build-red # Build red
```

Have fun.
