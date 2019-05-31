# Global Configuration

This Work in Progress document introduce global preference configuration of Brontosaurus.

## Styling

Most of application styling configuration can be also set through global preference setting. They are:

-   globalAvatar
-   globalBackgroundImages
-   globalHelpLink
-   globalPrivacyPolicy

These items shown as:

```json
{
    "active": Boolean,
    "name": String,
    "value": String, (JSON stringified)
    "history": String[]
}
```

structure in `preference` database.

To config them, simply add them to `preference` database collection.

Notice: background images come with an array of string, the `brontosaurus/core` server will pick one from the list randomly.
