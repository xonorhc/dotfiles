# Dotfiles

all:

```sh
cd ~/.dotfiles
stow --verbose --target=$HOME --dir=$HOME/.dotfiles --restow .
```

delete:

```sh
cd ~/.dotfiles
stow --verbose --target=$HOME --delete .
```
