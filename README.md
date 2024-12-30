# halostatue/fish-machine-config

A short description of this module for [fish shell][fish shell].

## Installation

Install with [Fisher][Fisher] (recommended):

```fish
fisher install halostatue/fish-machine-config@v1
```

### System Requirements

- [fish][fish] 3.0+

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

[MIT](LICENCE.md)

[fish shell]: https://fishshell.com 'friendly interactive shell'
[fisher]: https://github.com/jorgebucaran/fisher
[fish]: https://github.com/fish-shell/fish-shell
