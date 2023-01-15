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


echo 'Installation complete'
