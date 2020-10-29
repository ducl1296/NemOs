#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install xorg i3 slim terminator mousepad lxappearance nemo git unzip feh rofi wget compton xpfd ffmpeg pulseaudio pavucontrol mpd mpc ncmpcpp
sudo pip3 install youtube-dl
echo "deb http://ftp.debian.org/debian buster-backports main" | sudo -A tee /etc/apt/sources.list.d/backports.list
sudo apt -t buster-backports install polybar -y
git clone https://github.com/ducl1296/NemOs.git
