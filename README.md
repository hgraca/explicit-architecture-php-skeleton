# Hgraca \ Explicit Architecture PHP Skeleton

This is a skeleton for a project following Explicit Architecture, specifically for a PHP project,
 although it can be easily adjusted to any programming language.

## Usage

To use this skeleton we just need to clone this repo, make a few search/replace steps, and understand how/why the
 project structure is the way it is, so we can follow The Explicit Architecture principles.

Clone this repo:
```bash
git clone git@github.com:hgraca/explicit-architecture-php-skeleton.git lib-name
```

Replace:

- Hgraca => The vendor name
- '\<lib-name-description\>' => A description for the library
- lib-name => The library name
- LibName => The library namespace

Go through the README.md and adapt the template below to your situation.

### Explicit Architecture

I explained [Explicit Architecture][1] in one of my blog posts, as a result of my understanding of several architectural
 styles such as (but not limited to) [EBI Architecture][11], [DDD][12], [Ports & Adapters Architecture][13], 
 [Onion Architecture][14] and [Clean Architecture][15].
 
[![Explicit Architecture](https://docs.google.com/drawings/d/e/2PACX-1vQ5ps72uaZcEJzwnJbPhzUfEeBbN6CJ04j7hl2i3K2HHatNcsoyG2tgX2vnrN5xxDKLp5Jm5bzzmZdv/pub?w=960&amp;h=657)][2]

#### Dependencies directions

[![Dependencies](https://docs.google.com/drawings/d/e/2PACX-1vQyv5xAx5hFJPhiK19AGl_2t256M0yKcDSliH8etojltE3tBlEnCndwfsUr1UsXvv5PKGVtrBHkQX3h/pub?w=913&amp;h=129)][16]

#### Folder structure

- **bin** (_application binaries, the dependencies binaries should go in vendor/bin_)
- **build** (_artifacts needed for building the application prior to running it_)
- **config** (_all the config needed to run the application_)
- **docs** (_application documentation_)
- **lib** (_libraries used by the application, which are specific to this application or not distributable (yet)_)
    - **[shared-kernel][6]** (_application and domain code shared among all components/bounded contexts_)
        - _src_
        - _tests_
    - **std-lib**  (_functions and/or classes to be used as if they were part of the language itself_)
        - _src_
        - _tests_
- **src**
    - **[Core][10]** (_the application core_)
        - **[Component][5]** (_the application components/bounded contexts_)
            - **[CoreDomain][3]** (_the application components that are part of the core domain_)
            - **[GenericSubdomain][4]** (_the application components that are generic sub-domains_)
        - **[Port][8]** (_the ports, to be implemented by the infrastructure adapters_)
    - **[Infrastructure][9]** (_the port adapters for the infrastructure tools_)
    - **[UI][7]** (_the user facing applications, controllers, views and related code units_)
- **tests** (_unit, integration, functional, acceptance tests_)
    - **build** (_artifacts needed for running the application tests, like a test DB template_)
- **var** (_volatile artifacts like logs, cache, temporary test databases, generated code, ..._)
- **vendor** (_distributable libraries_)

## Template for this readme.md:

---

# Hgraca \ LibName
[![Author](http://img.shields.io/badge/author-@hgraca-blue.svg?style=flat-square)](https://www.herbertograca.com)
[![Software License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Latest Version](https://img.shields.io/github/release/hgraca/php-lib-name.svg?style=flat-square)](https://github.com/hgraca/php-lib-name/releases)
[![Total Downloads](https://img.shields.io/packagist/dt/hgraca/lib-name.svg?style=flat-square)](https://packagist.org/packages/hgraca/lib-name)

[![Build Status](https://img.shields.io/scrutinizer/build/g/hgraca/php-lib-name.svg?style=flat-square)](https://scrutinizer-ci.com/g/hgraca/php-lib-name/build)
[![Coverage Status](https://img.shields.io/scrutinizer/coverage/g/hgraca/php-lib-name.svg?style=flat-square)](https://scrutinizer-ci.com/g/hgraca/php-lib-name/code-structure)
[![Quality Score](https://img.shields.io/scrutinizer/g/hgraca/php-lib-name.svg?style=flat-square)](https://scrutinizer-ci.com/g/hgraca/php-lib-name)

\<lib-name-description\>

Add here a short description of what is the project. This should explain **what** the project is.
Add here a short description of the motivation behind the creation and maintenance of the project. 
This should explain **why** the project exists.

## Installation

To install the library, run the command below and you will get the latest version:

```bash
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
make test-acc
make test-func
make test-int
make test-unit
```

```bash
make coverage
```

```bash
make cs-fix
```

```bash
make dep-install
make dep-update
```

```bash
make build-container-dev
make build-container-prd
```

[1]: https://herbertograca.com/2017/11/16/explicit-architecture-01-ddd-hexagonal-onion-clean-cqrs-how-i-put-it-all-together/
[2]: https://docs.google.com/drawings/d/1E_hx5B4czRVFVhGJbrbPDlb_JFxJC8fYB86OMzZuAhg/edit?usp=sharing
[3]: http://ddd.fed.wiki.org/view/welcome-visitors/view/domain-driven-design/view/core-domain
[4]: http://ddd.fed.wiki.org/view/welcome-visitors/view/domain-driven-design/view/generic-subdomains
[5]: http://ddd.fed.wiki.org/view/welcome-visitors/view/domain-driven-design/view/bounded-context
[6]: http://ddd.fed.wiki.org/view/welcome-visitors/view/domain-driven-design/view/shared-kernel
[7]: https://herbertograca.com/2017/11/16/explicit-architecture-01-ddd-hexagonal-onion-clean-cqrs-how-i-put-it-all-together/#primary-or-driving-adapters
[8]: https://herbertograca.com/2017/11/16/explicit-architecture-01-ddd-hexagonal-onion-clean-cqrs-how-i-put-it-all-together/#ports
[9]: https://herbertograca.com/2017/11/16/explicit-architecture-01-ddd-hexagonal-onion-clean-cqrs-how-i-put-it-all-together/#secondary-or-driving-adapters
[10]: https://herbertograca.com/2017/11/16/explicit-architecture-01-ddd-hexagonal-onion-clean-cqrs-how-i-put-it-all-together/#application-core-organisation
[11]: https://herbertograca.com/2017/08/24/ebi-architecture/
[12]: https://herbertograca.com/2017/09/07/domain-driven-design/
[13]: https://herbertograca.com/2017/09/14/ports-adapters-architecture/
[14]: https://herbertograca.com/2017/09/21/onion-architecture/
[15]: https://herbertograca.com/2017/09/28/clean-architecture-standing-on-the-shoulders-of-giants/
[16]: https://docs.google.com/drawings/d/1DGiP9qyBpRHPDPKRJoXdElw1DXwmJoR-88Qvtf6hBNA/edit?usp=sharing
