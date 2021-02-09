#!/bin/bash

cat << EOM >> /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist
EOM

git clone "https://aur.archlinux.org/$1.git"
gpg --keyserver keys.gnupg.net --recv-keys 38DBBDC86092693E
cd "$1"
makepkg -sf --noconfirm
