# HOW TO

## Naming

Replace:

- '<lib-name-description>' => A description for the library
- lib-name => The library name
- LibName => The library namespace

Go through the README.md and adapt to your situation

## Folder structure

- **bin** (_application binaries, the dependencies binaries should go in vendor/bin_)
- **docs** (_application documentation_)
- **lib**
    - **shared-kernel** (_application and domain code shared among all bounded contexts_)
    - **std-lib**  (_functions and/or classes to be used as if they were part of the language itself_)
- **src**
    - **Core** (_the main application code_)
    - **Infrastructure** (_the adapters for the infrastructure code_)
    - **Presentation** (_the user facing applications, controllers, views and related code units_)
- **storage** (_artifacts needed for running the application in production_)
- **tests** (_unit, integration, functional, acceptance tests_)
    - **storage** (_artifacts needed for running the application tests, like a test DB template_)
- **var** (_volatile artifacts like logs, cache, temporary test databases, generated code, uploaded code like user plugins, ..._)
- **vendor** (_distributable libraries_)
