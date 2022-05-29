#!/bin/sh

DOTFILES_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# zsh
rm -rf ~/.zshrc
rm -rf ~/.zshenv
rm -rf ~/.zsh
ln -sf $DOTFILES_DIR/home/_zshrc ~/.zshrc
ln -sf $DOTFILES_DIR/home/_zshenv ~/.zshenv
ln -sf $DOTFILES_DIR/home/_zsh ~/.zsh


# gitui
rm -rf ~/.config/gitui
ln -sf $DOTFILES_DIR/home/_config/gitui ~/.config/gitui


# nvim
rm -rf ~/.config/nvim
ln -sf $DOTFILES_DIR/home/_config/nvim ~/.config/nvim


# sway
rm -rf ~/.config/sway
ln -sf $DOTFILES_DIR/home/_config/sway ~/.config/sway


# waybar
rm -rf ~/.config/waybar
ln -sf $DOTFILES_DIR/home/_config/waybar ~/.config/waybar


# wofi
rm -rf ~/.config/wofi
ln -sf $DOTFILES_DIR/home/_config/wofi ~/.config/wofi


# foot
rm -rf ~/.config/foot
ln -sf $DOTFILES_DIR/home/_config/foot ~/.config/foot


echo 'Installation complete'
