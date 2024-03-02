#!/bin/bash
#|---/ /+--------------------------+---/ /|#
#|--/ /-| General packages         |--/ /-|#
#|-/ /--| @_patrick.js             |-/ /--|#
#|/ /---+--------------------------+/ /---|#

# ------------------------------------------------------
# ? Core packages with pacman
# ------------------------------------------------------

pacman_packages_lst=(
  "gum"
  "zip"
  "gvfs"
  "gtk4"
  "pipewire"
  "pipewire-alsa"
  "pipewire-audio"
  "pipewire-jack"
  "pipewire-pulse"
  "gst-plugin-pipewire"
  "wireplumber"
  "bluez"
  "bluez-utils"
  "blueman"
  "networkmanager"
  "network-manager-applet"
  "ufw"
  "ufw-extras"
  "fish"
  "pacman-contrib"
  "wget"
  "openssh"
  "unzip"
  "freerdp"
  "mousepad"
  "tumbler"
  "polkit-git"
  "brightnessctl"
  "man-pages"
  "xdg-user-dirs"
  "xdg-desktop-portal"
  "xdg-utils"
)

for pkg in "${pacman_packages_lst[@]}"; do
  install_package_pacman "$pkg"
done

# ------------------------------------------------------
# ? Hyprland packages with yay
# ------------------------------------------------------

hyprland_packages_lst=(
  "jq"
  "rofi"
  "swww"
  "kitty"
  "qt5ct"
  "qt6ct"
  "dunst"
  "swappy"
  "waybar"
  "dolphin"
  "wlogout"
  "eww-git"
  "swaylock"
  "sddm-git"
  "hyprland"
  "swayidle"
  "cliphist"
  "parallel"
  "imagemagick"
  "qt5-wayland"
  "qt6-wayland"
  "polkit-kde-agent"
  "qt5-imageformats"
  "qt5-quickcontrols"
  "qt5-quickcontrols2"
  "qt5-graphicaleffects"
  "swaylock-effects-git"
  "xdg-desktop-portal-hyprland"
)

for pkg in "${hyprland_packages_lst[@]}"; do
  install_package_yay "$pkg"
done

# ------------------------------------------------------
# ? Assets (fonts, etc...) with yay
# ------------------------------------------------------

yay_assets_lst=(
  "emote"
  "noto-fonts"
  "papirus-icon-theme"
  "ttf-jetbrains-mono-nerd"
  "bibata-cursor-theme-bin"
  "ttf-material-design-icons-extended"
)

for asset in "${yay_assets_lst[@]}"; do
  install_package_yay "$asset"
done

chsh -s /usr/bin/fish