# Node SDK Client Side Validation

## Usage

```ts
import { Authorization, AuthToken } from "@brontosaurus/node";

export const auth: Authorization = Authorization.create(
    undefined,
    Get_Brontosaurus_Application_key(),
    Get_Brontosaurus_Public_key(),
);

const token: AuthToken | null = auth.token(principal);

if (token && token.authenticate()) {
    return true;
}
return false;
```
