# Global Configuration

This Work in Progress document introduces the global preference configuration of Brontosaurus.

## Styling

Most application styling configuration can also be set through a global preference setting. They are:

-   globalAvatar
-   globalBackgroundImages
-   globalHelpLink
-   globalPrivacyPolicy

These items are shown as:

```ts
type Preference = {

    active: boolean;
    name: string;
    value: string; // (JSON Stringified)
    history: string[];
}
```

Structure in `preference` database.

To config, them, simply add them to `preference` database collection.

Notice: background images come with an array of string, the `brontosaurus/core` server will pick one from the list randomly.
