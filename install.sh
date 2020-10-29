#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install xorg i3 slim terminator mousepad lxappearance nemo git unzip feh rofi wget compton xpfd ffmpeg pulseaudio pavucontrol mpd mpc ncmpcpp
sudo pip3 install youtube-dl
echo "deb http://ftp.debian.org/debian buster-backports main" | sudo -A tee /etc/apt/sources.list.d/backports.list
sudo apt -t buster-backports install polybar -y
#Config files
git clone https://github.com/ducl1296/NemOs.git
cd NemOs
mkdir /home/"$USER"/.config
mkdir /home/"$USER"/.local
cp config/* /home/"$USER"/.config
cp local/* /home/"$USER"/.local
#Slim
sudo mkdir /usr/share/slim/themes
sudo cp -r config/slim/darky_pink /usr/share/slim/themes/
sudo cp config/slim/slim.conf /etc/slim.conf
#Mpd
mkdir /home/"$USER"/Música
touch /home/"$USER"/.config/mpd/db
touch /home/"$USER"/.config/mpd/mpdstate
touch /home/"$USER"/.config/mpd/mpd.pid
touch /home/"$USER"/.config/mpd/mpd.log
touch /home/"$USER"/.config/mpd/mpd.error
sudo rm /etc/mpd.conf
#Allow Bitmaps
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
#Sofware extra
read -r -p "Quieres instalar chrome? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    sudo dpkg -i software/google-chrome-amd64.debian
    sudo apt -f install
else
    echo "No se instalara"
fi
#Quieres reiniciar?
read -r -p "Quieres reiniciar el pc? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    systemctl reboot
else
    echo "Termino la instalacion, si quieres aplicar los cambios, reinicia"
fi
