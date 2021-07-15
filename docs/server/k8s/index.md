---
title: Create a Brontosaurus Cluster with Kubernetes
layout: default
---

# Create a Brontosaurus Cluster with Kubernetes

This Work in Progress document will guide you to create and host a Brontosaurus instance within 5 minutes.

## Image

Brontosaurus has three active docker images available on Docker Hub now. Image `brontosaurus/core` for core function, image `brontosaurus/red` for a prebuilt command center for light need, and image `brontosaurus/green` for server-side SDK support. However, `brontosaurus/red` and `brontosaurus/green` are not required, and you can create your personalized control center with Brontosaurus. It now recommended, but you can even edit the Brontosaurus Database with `@brontosaurus/db` package for NodeJS.

> For `@brontosaurus/db`, check out [Use Brontosaurus DB](../db/db.md) Document

Brontosaurus docker hub image doesn't use default `latest` tag, which means you have to specificity the version you want when you are pulling it. When pulling, the image version can be assigned like `brontosaurus/core:x.x.x`.

Here are the latest versions of our images.

[![Brontosaurus Core Image Version](//img.shields.io/docker/v/brontosaurus/core?label=brontosaurus%2Fcore&sort=semver)](//hub.docker.com/r/brontosaurus/core)
[![Brontosaurus Red Image Version](//img.shields.io/docker/v/brontosaurus/red?color=red&label=brontosaurus%2Fred&sort=semver)](//hub.docker.com/r/brontosaurus/red)
[![Brontosaurus Green Image Version](//img.shields.io/docker/v/brontosaurus/green?color=green&label=brontosaurus%2Fgreen&sort=semver)](//hub.docker.com/r/brontosaurus/green)

## Configuration

Core example YAML configuration

{% include copyable-highlight.html
    language="yaml"
    file="core.yaml"
%}

Red example YAML configuration

{% include copyable-highlight.html
    language="yaml"
    file="red.yaml"
%}

Green example YAML configuration

{% include copyable-highlight.html
    language="yaml"
    file="green.yaml"
%}
