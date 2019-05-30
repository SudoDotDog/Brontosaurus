# Integrate Brontosaurus with React

Use Brontosaurus with React is easy and transparent, with no invasive pattern

## Install SDK

Brontosaurus Web package is made for any modern web development technology, you may need a bundler such as `webpack`, `browserify` or `parcel`.

```sh
npm install @brontosaurus/web
```

Brontosaurus React package is made for react, although everything you need is included in `@brontosaurus/web`, but this package can help you integrate brontosaurus and react better and clearer.

```sh
npm install @brontosaurus/react
```

## Prepare

A application must be created in Brontosaurus Red or other management portal before a web application can access it.

You will need a `ApplicationKey` and a `ServerPath` for the following steps.

## Register

Brontosaurus need to be register to your application before you use it.

For a application that doesn't require a sign-in, you can use:

```ts
import { Brontosaurus } from "@brontosaurus/web"
Brontosaurus.hydrate(serverPath, applicationKey, true);
```

For a application that require login, just remove the last parameter of `hydrate` function. Like:

```ts
import { Brontosaurus } from "@brontosaurus/web"
Brontosaurus.hydrate(serverPath, applicationKey);
```

Other than `hydrate`, there are several way to register Brontosaurus with `@brontosaurus/web`, check the document for more information.

## Logout

Wherever of your application, use the following code to logout current user.

```ts
import { Brontosaurus } from "@brontosaurus/web"
Brontosaurus.logout();
```

Also, pass `true` to `logout` function, Brontosaurus will redirect user to sign-in page again for re-sign-in.

```ts
import { Brontosaurus } from "@brontosaurus/web"
Brontosaurus.logout(true);
```
