# Dotfiles

Install dependencies:

```sh
$ pacman -Syu vim neovim kitty hyprland stow yazi
```

Clone repository:

```sh
git clone https://github.com/xonorhc/dotfiles.git ~/.dotfiles
```

Setup dotfiles:

```sh
 stow --verbose --target=$HOME --dir=$HOME/.dotfiles --restow */
```

# Credits
