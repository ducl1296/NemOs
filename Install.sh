#!/bin/bash
######Install this from sudo
apt install xorg i3 rofi nemo terminator feh compton lxappearance mousepad midori -y
echo "nemo  ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo "deb http://ftp.debian.org/debian buster-backports main" | tee /etc/apt/sources.list.d/backports.list
apt update && apt upgrade
apt install polybar -y
apt install ffmpeg pulseaudio pavucontrol mpd mpc ncmpcpp lightdm -y
apt purge xterm -y
