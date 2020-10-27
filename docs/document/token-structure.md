# Token Structure

Brontosaurus use `JWT (JSON Web Token)` as base token structural protocol. For information about `JWT`, see [JSON Web Token Introduction](//jwt.io/introduction/); 

## Header

```ts
type Header = {

    readonly algorithm: "RSA-SHA256";
    readonly alg: "RS256";

    readonly attempt: string;
    readonly expireAt: number;
    readonly issuedAt: number;

    readonly key: string;
}
```
