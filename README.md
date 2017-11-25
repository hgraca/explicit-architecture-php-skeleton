# Hgraca\LibName
[![Author](http://img.shields.io/badge/author-@hgraca-blue.svg?style=flat-square)](https://www.herbertograca.com)
[![Software License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Latest Version](https://img.shields.io/github/release/hgraca/php-lib-name.svg?style=flat-square)](https://github.com/hgraca/php-lib-name/releases)
[![Total Downloads](https://img.shields.io/packagist/dt/hgraca/lib-name.svg?style=flat-square)](https://packagist.org/packages/hgraca/lib-name)

[![Build Status](https://img.shields.io/scrutinizer/build/g/hgraca/php-lib-name.svg?style=flat-square)](https://scrutinizer-ci.com/g/hgraca/php-lib-name/build)
[![Coverage Status](https://img.shields.io/scrutinizer/coverage/g/hgraca/php-lib-name.svg?style=flat-square)](https://scrutinizer-ci.com/g/hgraca/php-lib-name/code-structure)
[![Quality Score](https://img.shields.io/scrutinizer/g/hgraca/php-lib-name.svg?style=flat-square)](https://scrutinizer-ci.com/g/hgraca/php-lib-name)

\<lib-name-description\>

A short description of what is the project. This should explain **what** the project is.
A short description of the motivation behind the creation and maintenance of the project. This should explain **why** the project exists.

## Usage (Code Example / how)

A short explanation of how to use the project. This should explain **how** the project is usable.

### Naming

Replace:

- '\<lib-name-description\>' => A description for the library
- lib-name => The library name
- LibName => The library namespace

Go through the README.md and adapt to your situation

### Folder structure

- **bin** (_application binaries, the dependencies binaries should go in vendor/bin_)
- **docs** (_application documentation_)
- **lib**
    - **shared-kernel** (_application and domain code shared among all bounded contexts_)
    - **std-lib**  (_functions and/or classes to be used as if they were part of the language itself_)
- **src**
    - **Core** (_the main application code_)
    - **Infrastructure** (_the adapters for the infrastructure code_)
    - **UI** (_the user facing applications, controllers, views and related code units_)
- **storage** (_artifacts needed for running the application in production_)
- **tests** (_unit, integration, functional, acceptance tests_)
    - **storage** (_artifacts needed for running the application tests, like a test DB template_)
- **var** (_volatile artifacts like logs, cache, temporary test databases, generated code, uploaded code like user plugins, ..._)
- **vendor** (_distributable libraries_)

## Installation

To install the library, run the command below and you will get the latest version:

```
composer require hgraca/lib-name
```

## Deployment

Add additional notes about how to deploy this on a live system

## Available commands

```bash
make run
```

```bash
make test
```

```bash
make coverage
```

```bash
make cs-fix
```

```bash
make dep-install
```

```bash
make dep-update
```

```bash
make build-container
```

## Todo
