#!/bin/bash
######Install this from sudo
apt install xorg i3 rofi nemo terminator feh compton lxappearance mousepad midori -y
echo "nemo  ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo "deb http://ftp.debian.org/debian buster-backports main" | tee /etc/apt/sources.list.d/backports.list
echo "deb http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main" >> /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main " >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 73C62A1B
apt update && apt upgrade
apt install polybar -y
apt install ffmpeg pulseaudio pavucontrol mpd mpc ncmpcpp lightdm policykit-1-gnome -y
apt purge xterm -y
