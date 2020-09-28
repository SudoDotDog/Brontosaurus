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

This module contains typescript declaration file by default. No types package required.

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

## Validate Token

Brontosaurus Node SDK support both Client Side and Server Side Validation. About those see [Token Validation](../document/token-validation.md)
