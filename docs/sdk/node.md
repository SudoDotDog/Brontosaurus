---
title: Node JS SDK for Brontosaurus
layout: default
---

# Node JS SDK for Brontosaurus

This Work in Progress document introduces the installation step of `@brontosaurus/node`.

## Install

With NPM

```sh
npm install @brontosaurus/node
```

With Yarn

```sh
yarn add @brontosaurus/node
```

This module provides its own typescript declaration file. No types package required.

## Initialization

The node SDK requires a initialization to gather brontosaurus server information. We recommend only do initialization once for each brontosaurus server.

```ts
import { Authorization } from "@brontosaurus/node";

export const auth: Authorization = Authorization.create(
    Get_Brontosaurus_Server(), // Can be undefined, if server side validation is not using
    Get_Brontosaurus_Application_key(), // Required
    Get_Brontosaurus_Public_key(), // Can be undefined, if client side validation is not using
);
```

Although the public key and server address can be set as undefined, if possible, set it to correct value can avoid potential problems. 

## Validate Token

Brontosaurus Node SDK support both Client Side and Server Side Validation.

See the following document for instructions.

-   [Client Side Validation](./node/client-side-validation)
-   [Server Side Validation](./node/server-side-validation)
