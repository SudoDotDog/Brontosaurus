# Vocabulary

## A

### Account

-   Account is a `brontosaurus` record type.
-   An account can be controlled by a human user or robot.

### Application

-   Application is a `brontosaurus` record type.

## C

### Core

-   Core is a `brontosaurus` module.
-   Core module is core module of the authorization system.

## D

### Decorator

-   Decorator is a `brontosaurus` record type.
-   Decorator is a property of an account record. An account owns multiple decorators.
-   Decorator is the property of an organization record. An organization owns multiple decorators.
-   Decorator is not accessible by an integrated client.

## G

### Green

-   Green is a `brontosaurus` module.
-   Green module is use to communicate between integrated service and auth database.

### Green Key

-   Green key is a generated password for authorization between applications.
-   User can retrieve green key by red or green module.

### Group

-   Group is a `brontosaurus` record type.
-   Group is a property of an account record. An account can be assigned to multiple groups.
-   Group is accessible by an integrated client.

## I

### Image

-   Brontosaurs Image is a runnable Docker image for deployment

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
-   User can not retrieve private key by any method.

### Public Key

-   Public key is a generated password for token signature validation.
-   Every application owns a different public key.
-   User can get public key by red module or green module.

## R

### Red

-   Red is a `brontosaurus` module.
-   Red module is use to interact with database by admin users.

## T

### Tag

-   Tag is a `brontosaurus` record type.
-   Tag is a property of an account record. An account can own multiple tags.
-   Tag is the property of an organization record. An organization can own multiple tags.
-   Tag is accessible by an integrated client.
