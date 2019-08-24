# Node JS SDK for Brontosaurus

This Work in Progress document introduce installation step of `@brontosaurus/node`.

## Install

With NPM

```sh
npm install @brontosaurus/node
```

With Yarn

```sh
yarn add @brontosaurus/node
```

This module contains typescript declaration file by default, no types package required

## Validate Token

Brontosaurus Node SDK support both Client Side and Server Side Validation. About those see [Token Validation](/docs/document/token-validation.md)

For Client side validation see the following example code:

```ts
import { Authorization, AuthToken } from "@brontosaurus/node";

export const auth: Authorization = Authorization.create(
    Get_Brontosaurus_Server(),
    Get_Brontosaurus_Application_key(),
    Get_Brontosaurus_Public_key(),
);

const token: AuthToken | null = auth.token(principal);

if (token && token.authenticate()) {
    return true;
}
return false;
```
