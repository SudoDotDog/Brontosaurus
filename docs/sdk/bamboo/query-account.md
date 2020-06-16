# Query Account with Bamboo SDK

The following code shows a example to query account list with the Bamboo SDK

## Simple

```ts
import { Bamboo, QueryAccountResponse } from '@sudoo/bamboo';

const bamboo: Bamboo = Bamboo.create($PATH, $AUTH);

const result: QueryAccountResponse = await bamboo.queryAccount({
});
```
