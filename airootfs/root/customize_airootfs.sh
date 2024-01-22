#!/usr/bin/env bash
#


bash /root/flatpak.install

set -e -u
systemctl enable gdm
systemctl set-default graphical.target

export $(dbus-launch)

chmod +x /usr/local/bin/lock-pacman
ln -s /usr/local/bin/lock-pacman /usr/local/bin/pacman

echo 'ALL ALL=(ALL) NOPASSWD: /usr/bin/autocheck' | tee -a /etc/sudoers

