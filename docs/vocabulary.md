# Vocabulary

## A

### Account

-   Account is a `brontosaurus` record type.
-   An account can be controlled by a human user or robot.

### Application

-   Application is a `brontosaurus` record type.

## B

### Bamboo

-   Bamboo is a npm package `@brontosaurus/bamboo`.
-   Bamboo package includes request function for `Brontosaurus Green` module.

### Brontosaurus

-   Brontosaurus is the overview name of this software.

## C

### Core (Module)

-   Core is a `brontosaurus` module.
-   Core module is the core module of the authorization system.

### Core (Package)

-   Core is a npm package `@brontosaurus/core`.
-   Core package includes function for token encryption and formatting.

## D

### DB (Package)

-   DB is a npm package `@brontosaurus/db`.
-   DB package includes Brontosaurus Mongodb database controller functions.

### DB (Abbreviation)

-   DB is the abbreviated word for database.

### Decorator

-   Decorator is a `brontosaurus` record type.
-   Decorator is a property of an account record. An account owns multiple decorators.
-   Decorator is the property of an organization record. An organization owns multiple decorators.
-   Decorator is not accessible by an integrated client.

## G

### Green

-   Green is a `brontosaurus` module.
-   Green module is used to communicate between an integrated service and an authorization database.

### Green Key

-   Green key is a generated password for authorization between applications.
-   Users can retrieve the green key by red or green module.

### Group

-   Group is a `brontosaurus` record type.
-   Group is a property of an account record. An account can be assigned to multiple groups.
-   Group is accessible by an integrated client.

## I

### Image

-   Brontosaurs Image is a runnable Docker image for deployment.

### Init

-   Init is a npm package `@brontosaurus/init`.
-   Init package includes functions and CLI command for database initialization.

## N

### Namespace

-   Namespace is a `brontosaurus` record type.

## O

### Organization

-   Organization is a `brontosaurus` record type.
-   Organization is a property of an account record. An account can be assigned to a single organization.
-   Organization is accessible by an integrated client.

## P

### Private Key

-   Private key is a generated password for token signature creation.
-   Every application owns a different private key.
-   Users can not retrieve private keys by any method.

### Public Key

-   Public key is a generated password for token signature validation.
-   Every application owns a different public key.
-   Users can get the public key by the red module or green module.

## R

### Red

-   Red is a `brontosaurus` module.
-   Red module is used to interact with the database by admin users.

## T

### Tag

-   Tag is a `brontosaurus` record type.
-   Tag is a property of an account record. An account can own multiple tags.
-   Tag is the property of an organization record. An organization can own multiple tags.
-   Tag is accessible by an integrated client.

### Token

-   Token is a generated string that shows user information and authenticate status.
-   For token structure, see [Token Structure](./document/token-structure.md).
