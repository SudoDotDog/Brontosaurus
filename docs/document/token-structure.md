# Token Structure

Brontosaurus use `JWT (JSON Web Token)` as base token structural protocol. For information about `JWT`, see [JSON Web Token Introduction](//jwt.io/introduction/); 

## Header

```ts
type Header = {

    algorithm: "RSA-SHA256";
    alg: "RS256";

    attempt: string;
    expireAt: number;
    issuedAt: number;

    key: string;
}
```

## Body

Some field has more specific description, for more information, try to find it within [Vocabulary](../vocabulary.md).

```ts
type Header = {

    username: string;
    namespace: string;
    mint: string;
    groups: string[];
    tags: string[];
    infos: Record<string, Basics>;
    beacons: Record<string, Basics>;
    modifies: string[];

    avatar?: string;
    email?: string;
    phone?: string;
    displayName?: string;
    organization?: string;
    organizationTags?: string[];
}
```
