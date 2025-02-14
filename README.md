# halostatue/fish-machine-config

[![Version][version]](https://github.com/halostatue/fish-machine-config/releases)

Machine, platform, and user specific configurations for [fish shell][shell].

## Installation

Install with [Fisher][Fisher]:

```fish
fisher install halostatue/fish-machine-config@v1
```

### System Requirements

- [fish][fish] 3.4+

## Functions

### `__machine_config`

Source or create a machine local configuration file. The configuration files
will be created based on the platform (`uname -s`), the host (`hostname`), or
the user (`whoami`).

```fish
$ __machine_config platform host whoami
# The above creates or sources files for each in the order provided.
```

This would be used in your `$HOME/.config/fish/config.fish` startup script.

## Licence

[MIT](./LICENCE.md)

## Change Log

[CHANGELOG](./CHANGELOG.md)

## Contributing

- [Contributing](./CONTRIBUTING.md)
- [Contributors](./CONTRIBUTORS.md)
- [Code of Conduct](./CODE_OF_CONDUCT.md)

[shell]: https://fishshell.com 'friendly interactive shell'
[fisher]: https://github.com/jorgebucaran/fisher
[version]: https://img.shields.io/github/tag/halostatue/fish-machine-config.svg?label=Version
[fish]: https://github.com/fish-shell/fish-shell
