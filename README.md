# Dotfiles

`$ pacman -Syu stow`

## Hyprland

`# echo -e 'source=~/.config/hypr/userprefs.conf' >> ~/.config/hypr/hyprland.conf`

`# ln -s ~/dotfiles/hyprland/.config/hypr/userprefs.conf ~/.config/hypr/userprefs.conf`

## Kitty

`$ pacman -S kitty`

`# echo -e 'include ./custom.conf' >> ~/.config/kitty/kitty.conf`

`# ln -s ~/dotfiles/kitty/custom.conf ~/.config/kitty/custom.conf`

## VIM

`$ pacman -S vim`

`# cd ~/dotfiles/ && stow vim`

`# vim`

`:PlugInstall`

or ...

## NeoVim

`$ pacman -S neovim`

`# cd ~/dotfiles/ && stow neovim`

`# nvim`

`:MasonInstallAll`

## Yazi

`$ pacman -S yazi`

`# cd ~/dotfiles/ && stow yazi`

`# ya pack -i`

## Postgres

`$ pacman -S postgresql postgis gdal`

`# yay -S pspg pgformatter sqlfluff`

# Credits
