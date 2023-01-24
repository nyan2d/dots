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


# sway
rm -rf ~/.config/sway
ln -sf $DOTFILES_DIR/home/_config/sway ~/.config/sway


# waybar
rm -rf ~/.config/waybar
ln -sf $DOTFILES_DIR/home/_config/waybar ~/.config/waybar


# wofi
rm -rf ~/.config/wofi
ln -sf $DOTFILES_DIR/home/_config/wofi ~/.config/wofi


# alacritty
rm -rf ~/.config/alacritty
ln -sf $DOTFILES_DIR/home/_config/alacritty ~/.config/alacritty

# fonts config
rm -rf ~/.config/fontconfig
ln -sf $DOTFILES_DIR/home/_config/fontconfig ~/.config/fontconfig


# tmux
rm -rf ~/.config/tmux
ln -sf $DOTFILES_DIR/home/_config/tmux ~/.config/tmux


echo 'Installation complete'
