#!/bin/sh

# Basic
sudo pacman -S base-devel git go
sudo pacman -S htop neofetch

# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# Fonts
sudo pacman -S fontconfig ttf-dejavu ttf-liberation noto-fonts ttf-droid
sudo pacman -S wget p7zip
mkdir jbmono
cd jbmono
wget 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip'
7z x JetBrainsMono.zip
rm JetBrainsMono.zip
cd ..
sudo mv jbmono /usr/share/fonts

# GUI
sudo pacman -S polkit alacritty sway waybar wofi slurp grim swayidle swaybg light
sudo pacman -S firefox

# Development
sudo pacman -S lazygit python python-pip nodejs npm
go get golang.org/x/tools/gopls@latest
sudo npm install i -g vscode-langservers-extracted
sudo npm install -g typescript-language-server
sudo nmp install -g typescript 
pip install 'python-lsp-server[all]'
