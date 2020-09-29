# Init Brontosaurus Database

This document introduces initialize the process for a Brontosaurus Database.

## Requirements

Any version of MongoDB should be sufficient for hosting. Sharding your database is highly recommended for robust purposes.

A MongoDB instance is required to run Brontosaurus.
See [MongoDB Installation Manual](//docs.mongodb.com/manual/installation/) to get an instance running.

## Install

Install is not required.

```sh
yarn global add @brontosaurus/init
# Or
npm install @brontosaurus/init -g
```

If `@brontosaurus/init` package is not installed, replace `brontosaurus-init` command to `npx @brontosaurus/init` command below.

## Usage

`<Database Path>` is the `MongoDB` database path.

Run the following command to initialize the database.

```sh
brontosaurs-init init <Database Path>
```
