# Node JS SDK for Brontosaurus Green

This Work in Progress document introduce how to use Brontosaurus NodeJS SDK with `@brontosaurus/bamboo` package.

## Install

```sh
yarn add @brontosaurus/bamboo
# Or
npm install @brontosaurus/bamboo --save
```

Note that `@brontosaurus/bamboo` will and only work within NodeJS environment. If you are looking for integrate Brontosaurus with other platform, like web, or mobile application, check out [Quick Start](../quick-start.md) _Client Side_ section.

## Initialize

We recommend to use single `Bamboo` instance for easier initialization.

```ts
export const bamboo: Bamboo = Bamboo.create($PATH, $AUTH);
```

> `PATH` is the url to Brontosaurus Green  
> `AUTH` is the combination of application key and green auth token

## APIS

-   [Query Account](../sdk/bamboo/query-account.md)
