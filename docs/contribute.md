# Contribute Brontosaurus

See the following step to run each brontosaurus component on your local device.

## Image

Run `Portal` container with docker

```sh
# Monitor
docker run -it -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8080 --name <Name> brontosaurus/core:<Version>
# Daemon
docker run -dit -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8080 --name <Name> brontosaurus/core:<Version>
```

Run `Red` container with docker

```sh
# Monitor
docker run -it -e BRONTOSAURUS_DATABASE="<Database>" -e PORTAL_PATH="<Portal>" -p <TargetPort>:9000 --name <Name> brontosaurus/red:<Version>
# Daemon
docker run -dit -e BRONTOSAURUS_DATABASE="<Database>" -e PORTAL_PATH="<Portal>" -p <TargetPort>:9000 --name <Name> brontosaurus/red:<Version>
```

Run `Green` container with docker

```sh
# Monitor
docker run -it -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8500 --name <Name> brontosaurus/green:<Version>
# Daemon
docker run -dit -e BRONTOSAURUS_DATABASE="<Database>" -p <TargetPort>:8500 --name <Name> brontosaurus/green:<Version>
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
