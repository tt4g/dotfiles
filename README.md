# Setup

## [chezmoi](https://www.chezmoi.io/)

> [!tip]
> If `chezmoi` is not installed, install it with `mise use --global chezmoi`.

### Customize

Create your configuration file `~.config/chezmoi/chezmoi.toml` by copying the
example [`chezmoi.config.example.toml`](chezmoi.config.example.toml).

See also:

* [\.chezmoidata/ - chezmoi](https://www.chezmoi.io/reference/special-directories/chezmoidata/)
  * GitHub: https://github.com/twpayne/chezmoi/blob/v2.69.3/assets/chezmoi.io/docs/reference/special-directories/chezmoidata.md

### Apply dotfiles

```shell
# Check diff
$ chezmoi diff

# Dry run
$ chezmoi apply --dry-run --verbose

# Apply dotfiles
$ chezmoi apply
```

## [mise](https://mise.jdx.dev/)

Install `mise and run:

```shell
$ mise install
$ mise prune
```

See also: https://github.com/jdx/mise

## Other setups

### Vim

#### Plugin Manager

Install [vim-plug](https://github.com/junegunn/vim-plug) and run `PlugInstall`.

