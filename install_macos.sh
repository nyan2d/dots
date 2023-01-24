#!/bin/sh


# remove old versions
rm -rf ~/.zshrc
rm -rf ~/.zsh
rm -rf ~/.zshenv
rm -rf ~/.config/tmux
rm -rf ~/.config/lazygit


# zsh
cp ./home/_zshrc ~/.zshrc
cp -r ./home/_zsh ~/.zsh
cp ./home/_zshenv ~/.zshenv


# tmux
cp ./home/_config/tmux ~/.config/tmux


# lazygit
cp ./home/_config/lazygit ~/.config/lazygit


echo 'Installation complete'
