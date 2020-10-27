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

## Body

Some field has more specific description, for more information, try to find it within [Vocabulary](../vocabulary.md).

```ts
type Header = {

    readonly username: string;
    readonly namespace: string;
    readonly mint: string;
    readonly groups: string[];
    readonly tags: string[];
    readonly infos: Record<string, Basics>;
    readonly beacons: Record<string, Basics>;
    readonly modifies: string[];

    readonly avatar?: string;
    readonly email?: string;
    readonly phone?: string;
    readonly displayName?: string;
    readonly organization?: string;
    readonly organizationTags?: string[];
}
```
