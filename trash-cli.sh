#!/usr/bin/env bash

. /etc/os-release
case $ID in
  debian|ubuntu)
    sudo apt-get install trash-cli -y
    ;;
  arch)
    sudo pacman -S trash-cli --noconfirm
    ;;
  fedora)
    sudo dnf install trash-cli -y
    ;;
  opensuse)
    sudo zypper install trash-cli -y
    ;;
  *)
    echo "Unsupported OS"
    exit 1
    ;;
esac

