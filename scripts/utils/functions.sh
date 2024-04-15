#!/usr/bin/env bash

# ------------------------------------------------------
# * Function: Package installed
# ------------------------------------------------------

pkg_installed() {
    local pkg=$1

    if pacman -Qi "${pkg}" &> /dev/null; then
        echo -e "\033[0;33m[SKIP]\033[0m ${pkg} is already installed."
        return 0
    else
        echo 
        echo "${pkg} is not installed."
        return 1
    fi
}

# ------------------------------------------------------
# * Function: Package is availabe
# ------------------------------------------------------

pkg_available() {
    local pkg=$1

    if pacman -Si "${pkg}" &> /dev/null; then
        # echo "${pkg} available in arch repo..."
        return 0
    else
        echo "${pkg} not available in arch repo..."
        return 1
    fi
}

# ------------------------------------------------------
# * Function: Package is availabe in AUR
# ------------------------------------------------------

aur_available() {
    local pkg=$1

    if ${aurhlpr} -Si "${pkg}" &> /dev/null; then
        # echo "${pkg} available in aur repo..."
        return 0
    else
        echo "aur helper is not installed..."
        return 1
    fi
}

print_banner() {
    local msg=$1

    echo -e "${YELLOW}"
    figlet "$msg"
    echo -e "${NONE}"
}
