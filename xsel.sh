#!/usr/bin/env bash

. /etc/os-release
case $ID in
  arch|manjaro)
    sudo pacman -Sy
    sudo pacman -S xsel --noconfirm
    ;;
  fedora)
    sudo dnf update
    sudo dnf install -y xsel
    ;;
  debian|ubuntu)
    sudo apt-get update
    sudo apt-get install -y xsel
    ;;
  *)
    echo "Unsupported distribution"
    exit 1
    ;;
esac

