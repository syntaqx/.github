# .github - Default files and a template ${project}

[![LICENSE](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/syntaqx/.github/blob/master/LICENSE)

- <https://help.github.com/articles/creating-a-default-community-health-file-for-your-organization>
- <https://help.github.com/en/articles/creating-a-template-repository>

Default community health files and reusable repository boilerplate files that
I tend to need over and over.

> **Note:** This repository lives in a weird middleground between functional and
> templatized as some things are easier to share than others. Feel free to poke
> around and adapt things as you'd like.

## Features

- Community health files
- Dotfiles
- Repository template

## Prerequisites

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)

### Tooling

- [direnv](https://direnv.net/)
- [git-crypt](https://www.agwa.name/projects/git-crypt/)

## Installation

### From source

```sh
git clone git@github.com:syntaqx/.github.git && cd $(basename "$_" .git)
```

## Development

### Dependencies

- [Go](https://golang.org/)

## License

[mit]: https://opensource.org/licenses/MIT

This project is open source software released under the [MIT license][mit].
