# Global Configuration

This Work in Progress document introduces the global preference configuration of Brontosaurus.

## Configurations

Most application styling configuration can also be set through a global preference setting. They are:

```ts
type RegisterInfo = {

    name: string;
    type: RegisterInfoType;
};

type Preferences = {

    readonly registerInfo: RegisterInfo;
    readonly prepared: boolean;

    readonly mailerTransport: any;
    readonly mailerSourceResetPassword: string;
    readonly mailerSourceNotification: string;

    readonly accountName: string;
    readonly systemName: string;
    readonly commandCenterName: string;

    readonly globalAvatar: string;
    readonly globalBackgroundImages: string[];
    readonly globalFavicon: string;
    readonly globalHelpLink: string;
    readonly globalPrivacyPolicy: string;

    readonly indexPage: string;
    readonly entryPage: string;
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
