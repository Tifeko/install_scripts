#!/usr/bin/env bash

. /etc/os-release
case $ID in
  ubuntu)
    sudo add-apt-repository ppa:maveonair/helix-editor
    sudo apt update
    sudo apt install -y helix
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
  debian)
    sudo apt-get install -y wget
    wget https://github.com/helix-editor/helix/releases/download/24.03/helix-24.03-x86_64-linux.tar.xz
    tar xf helix-24.03-x86_64-linux.tar.xz
    sudo mv helix-24.03-x86_64-linux/hx /usr/bin
    ;;
  *)
    echo "Unsupported OS"
    exit 1
    ;;
esac

