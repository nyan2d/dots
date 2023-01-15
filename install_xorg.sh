#!/bin/sh

DOTFILES_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# zsh
rm -rf ~/.zshrc
rm -rf ~/.zshenv
rm -rf ~/.zsh
ln -sf $DOTFILES_DIR/home/_zshrc ~/.zshrc
ln -sf $DOTFILES_DIR/home/_zshenv ~/.zshenv
ln -sf $DOTFILES_DIR/home/_zsh ~/.zsh


# xorg
rm -rf ~/.xinitrc
ln -sf $DOTFILES_DIR/home/_xinitrc ~/.xinitrc
rm -rf ~/.Xresources
ln -sf $DOTFILES_DIR/home/_Xresources ~/.Xresources


# fonts config
rm -rf ~/.config/fontconfig
ln -sf $DOTFILES_DIR/home/_config/fontconfig ~/.config/fontconfig


# i3
rm -rf ~/.config/i3
ln -sf $DOTFILES_DIR/home/_config/i3 ~/.config/i3


# picom
rm -rf ~/.config/picom
ln -sf $DOTFILES_DIR/home/_config/picom ~/.config/picom


# polybar
rm -rf ~/.config/polybar
ln -sf $DOTFILES_DIR/home/_config/polybar ~/.config/polybar


# gitui
rm -rf ~/.config/gitui
ln -sf $DOTFILES_DIR/home/_config/gitui ~/.config/gitui


# alacritty
rm -rf ~/.config/alacritty
ln -sf $DOTFILES_DIR/home/_config/alacritty ~/.config/alacritty


echo 'Installation complete'
