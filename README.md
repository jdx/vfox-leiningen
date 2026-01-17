# vfox-leiningen

[Leiningen](https://leiningen.org/) plugin for [vfox](https://github.com/version-fox/vfox) and [mise](https://mise.jdx.dev/).

Leiningen is a build automation and dependency management tool for Clojure projects.

## Requirements

- Java (JDK 8 or later)

## Installation

### With mise

```bash
mise use leiningen@latest
```

### With vfox

```bash
vfox add leiningen
vfox install leiningen@latest
```

## Usage

```bash
# Create a new project
lein new app my-project

# Run the project
cd my-project
lein run

# Start a REPL
lein repl

# Run tests
lein test
```

## How it works

This plugin:
1. Downloads the Leiningen standalone JAR from GitHub releases
2. Downloads the `lein` shell script from the repository
3. Sets up `LEIN_HOME` to point to the installation directory

## License

MIT
