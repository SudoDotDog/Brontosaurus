---
title: Node JS SDK for Brontosaurus Green
layout: default
---

# Node JS SDK for Brontosaurus Green

This Work in Progress document introduces Brontosaurus NodeJS SDK with `@brontosaurus/bamboo` package.

## Install

```sh
yarn add @brontosaurus/bamboo
# Or
npm install @brontosaurus/bamboo --save
```

Note that `@brontosaurus/bamboo` will and only work within a NodeJS environment. If you are looking to integrate Brontosaurus with other platforms, like web, or mobile application, check out [Quick Start](../quick-start.md) _Client Side_ section.

## Initialize

We recommend using a single `Bamboo` instance for easier initialization.

```ts
export const bamboo: Bamboo = Bamboo.create($PATH, $AUTH);
```

> `PATH` is the URL to Brontosaurus Green  
> `AUTH` is the combination of application key and green auth token

## APIS

-   [Query Account](../sdk/bamboo/query-account.md)
