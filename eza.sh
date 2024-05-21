#!/usr/bin/env bash
. /etc/os-release
case $ID in
    ubuntu|debian)
        sudo apt update
        sudo apt install -y gpg
        sudo mkdir -p /etc/apt/keyrings
        wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
        echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
        sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
        sudo apt update
        sudo apt install -y eza
        ;;
    fedora)
        sudo dnf update
        sudo dnf install -y eza
        ;;
    arch|manjaro)
        sudo pacman -Sy
        sudo pacman -S eza
        ;;
    opensuse)
        zypper ar https://download.opensuse.org/tumbleweed/repo/oss/ factory-oss
        zypper in eza
        ;;
    *)
        echo "Unknown"
        ;;
esac

