#!/usr/bin/env bash

. /etc/os-release
case $ID in
  ubuntu|debian)
    sudo apt-get update
    sudo apt-get install -y helix
    ;;
  fedora)
    sudo dnf install -y helix
    ;;
  arch|manjaro)
    sudo pacman -S helix
    ;;
  opensuse)
    sudo zypper install -y helix
    ;;
  *)
    echo "Unsupported OS"
    exit 1
    ;;
esac

