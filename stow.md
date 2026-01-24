# Dotfiles

all:

```sh
cd ~/.dotfiles
stow --verbose --target=$HOME --dir=$HOME/.dotfiles/configs --restow .
```

delete:

```sh
cd ~/.dotfiles
stow --verbose --target=$HOME --delete .
```
