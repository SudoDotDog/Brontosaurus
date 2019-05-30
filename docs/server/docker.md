# Host Brontosaurus Server with Docker

This Work in Progress document will guide you create and host a Brontosaurus within 10 minutes.

## Image

Brontosaurus has two active docker image available on Docker Hub now. Image `brontosaurus/core` for core function, image `brontosaurus/red` for a prebuilt command center for light need. However, `brontosaurus/red` is not required, and you can create your personalized control center with Brontosaurus, it now recommended, but you can even edit Brontosaurus Database with `@brontosaurus/db` package for NodeJS.

Brontosaurus docker hub image doesn't use default `latest` tag, which means you have to specificity the version you want when you are pulling it. When pulling, image version can be assigned like `brontosaurus/core:1.0.0`. Latest version can be found in the [ChangeLog](/docs/change-log.md).

## Docker

Docker is required for your machine to run Brontosaurus with Docker, to install Docker, check out this document [About Docker CE](https://docs.docker.com/install/). If you are running Brontosaurus for testing locally, install Docker Desktop.
