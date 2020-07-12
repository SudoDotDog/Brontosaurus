# Integrate Brontosaurus with React

Use Brontosaurus with React is smooth and transparent, with no invasive pattern.

## Install SDK

Brontosaurus Web package is made for any modern web development technology; you may need a bundler such as `webpack`, `browserify`, or `parcel`.

```sh
npm install @brontosaurus/web
```

Brontosaurus React package is made for react, although everything you need is included in `@brontosaurus/web`, this package can help you integrate Brontosaurus and react better and more transparent.

```sh
npm install @brontosaurus/react
```

## Prepare

An application must be created in Brontosaurus Red or other management portals before a web application can access it.

You will need an `ApplicationKey` and a `ServerPath` for the following steps.

## Register

Brontosaurus needs to be registered to your application before you use it.

For an application that doesn't require a sign-in, you can use:

```ts
import { Brontosaurus } from "@brontosaurus/web"
Brontosaurus.hydrate(serverPath, applicationKey, true);
```

For an application that requires signed-in, remove the last parameter of the `hydrate` function. Like:

```ts
import { Brontosaurus } from "@brontosaurus/web"
Brontosaurus.hydrate(serverPath, applicationKey);
```

Besides `hydrate`, there are several ways to register Brontosaurus with `@brontosaurus/web` and check the document for more information.

## Logout

Wherever of your application, use the following code to logout the current user.

```ts
import { Brontosaurus } from "@brontosaurus/web"
Brontosaurus.logout();
```

Also, pass `true` to `logout` function, Brontosaurus will redirect the user to the sign-in page again for re-sign-in.

```ts
import { Brontosaurus } from "@brontosaurus/web"
Brontosaurus.logout(true);
```
