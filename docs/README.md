# Brontosaurus

[![Build Status](https://travis-ci.com/SudoDotDog/Brontosaurus.svg?branch=master)](https://travis-ci.com/SudoDotDog/Brontosaurus)

[![Brontosaurus Core Image Version](https://img.shields.io/docker/v/brontosaurus/core?label=brontosaurus%2Fcore&sort=semver)](https://hub.docker.com/r/brontosaurus/core)
[![Brontosaurus Red Image Version](https://img.shields.io/docker/v/brontosaurus/red?color=red&label=brontosaurus%2Fred&sort=semver)](https://hub.docker.com/r/brontosaurus/red)
[![Brontosaurus Green Image Version](https://img.shields.io/docker/v/brontosaurus/green?color=green&label=brontosaurus%2Fgreen&sort=semver)](https://hub.docker.com/r/brontosaurus/green)

:whale: Brontosaurus Auth

## Introduction

This repository is responsible for docker image build and release for Brontosaurus components.

## Resources

-   [Quick Start](/docs/quick-start.md)
-   [Upgrade](/docs/upgrade/upgrade.md)
-   [Documents](/docs/documents.md)
-   [ChangeLog](/docs/change-log.md)
-   [Submodule and SDK Status and List](/docs/submodule-sdk.md)

## Image

Run portal container with docker

```sh
# Monitor
docker run -it -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8080 --name <Name> brontosaurus/core:<Version>
# Daemon
docker run -dit -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8080 --name <Name> brontosaurus/core:<Version>
```

Run red container with docker

```sh
# Monitor
docker run -it -e BRONTOSAURUS_DATABASE="<Database>" PORTAL_PATH="<Portal>" -p <TargetPort>:9000 --name <Name> brontosaurus/red:<Version>
# Daemon
docker run -dit -e BRONTOSAURUS_DATABASE="<Database>" PORTAL_PATH="<Portal>" -p <TargetPort>:9000 --name <Name> brontosaurus/red:<Version>
```

## Host

To host the docker image for `Brontosaurus-Portal` locally on your 8080 port, `Brontosaurus-Red` locally on your 9000 port. 

```sh
make DB="${host of your MongoDB instance}" # launch with production environment

make sh-red DB="${host of your MongoDB instance}" # access development red with sh
make sh-portal DB="${host of your MongoDB instance}" # access development portal with sh
make sh-green DB="${host of your MongoDB instance}" # access development green with sh
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
