#!/usr/bin/env bash

source fn.sh

if pkg_installed yay; then
    echo -e "\033[0;33m[SKIP]\033[0m yay is already installed."
    exit 0
fi

echo "Installing yay..."

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay-bin.git ~/yay
cd ~/yay || exit
makepkg -si
yay -Y --gendb
yay -Y --devel --save
yay

echo "yay has been installed successfully."
rm -rf ~/yay
