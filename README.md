# Setup

## [chezmoi](https://www.chezmoi.io/)

> [!tip]
> If `chezmoi` is not installed, install it with `mise use --global chezmoi`.

Use `chezmoi` to manage dotfiles in [`chezmoi/`](./chezmoi/) directory.

See also:

* [Customize your source directory - chezmoi](https://www.chezmoi.io/user-guide/advanced/customize-your-source-directory/)
  * GitHub: https://github.com/twpayne/chezmoi/blob/v2.69.3/assets/chezmoi.io/docs/user-guide/advanced/customize-your-source-directory.md
* [.chezmoiroot - chezmoi](https://www.chezmoi.io/reference/special-files/chezmoiroot/)
  * GitHub: https://github.com/twpayne/chezmoi/blob/v2.69.3/assets/chezmoi.io/docs/reference/special-files/chezmoiroot.md

### Customize

Create your configuration file `~/.config/chezmoi/chezmoi.toml` by copying the
example [`chezmoi.config.example.toml`](chezmoi.config.example.toml).

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
