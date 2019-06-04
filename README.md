# Generator for Boxture SDKs

This is a meta-project that facilitates generating SDKs for the Boxture API using OpenAPI Generator. Currently only PHP
is implemented, but in theory support for many other languages can be easily added.

## Requirements

  - Docker (https://docs.docker.com/install/)

## Generating the API

Build the SDK for PHP like this:

```bash
./generate-php.sh
```

## Adding support for other languages.

SDKs for other languages could theoretically be built by creating an `openapi-config.foo.json` for the language that you
wish to build for.

It hasn't been tested with other languages though.
