# Global Configuration

This Work in Progress document introduces the global preference configuration of Brontosaurus.

## Configurations

Most application configuration can be set through a global preference setting. They are:

```ts
type RegisterInfo = {

    name: string;
    type: RegisterInfoType;
};

type Preferences = {

    registerInfo: RegisterInfo;
    prepared: boolean;

    mailerTransport: any;
    mailerSourceResetPassword: string;
    mailerSourceNotification: string;

    accountName: string;
    systemName: string;
    commandCenterName: string;

    globalAvatar: string;
    globalBackgroundImages: string[];
    globalFavicon: string;
    globalHelpLink: string;
    globalPrivacyPolicy: string;

    indexPage: string;
    entryPage: string;
};
```

## Database Structure

These items are shown in database as structure:

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
