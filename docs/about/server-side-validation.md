# Server Side Validation

## Usage

```ts
import { Authorization, AuthToken } from "@brontosaurus/node";

export const auth: Authorization = Authorization.create(
    Get_Brontosaurus_Server(),
    Get_Brontosaurus_Application_key(),
);

const token: AuthToken | null = auth.token(principal);

if (token
    && token.clock()
    && token.match()
    && await token.validate()) {
    return true;
}
return false;
```
