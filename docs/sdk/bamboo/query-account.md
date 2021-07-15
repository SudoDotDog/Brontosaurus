---
title: Query Account with Bamboo SDK
layout: default
---

# Query Account with Bamboo SDK

The following code shows an example to query the account list with the Bamboo SDK.

If the bamboo instance is not set up yet, visit [Node JS SDK for Brontosaurus Green](../bamboo) see _Initialize_ section.

## Simple

```ts
import { bamboo } from '$your-bamboo-instance-file';

const result: QueryAccountResponse = await bamboo.queryAccount({
});
```
