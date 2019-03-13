# Brontosaurus

[![Build Status](https://travis-ci.org/SudoDotDog/Brontosaurus.svg?branch=master)](https://travis-ci.org/SudoDotDog/Brontosaurus)

:whale: Brontosaurus Auth

## Intro

This repository is responsible for docker image build and release for Brontosaurus components

## Install

You will need `Docker`, `yarn` and `make` for this repository

## Build

To build the docker image for `Brontosaurus-Server` and `Brontosaurus-Portal`

```sh
make build
```

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

Have fun.
