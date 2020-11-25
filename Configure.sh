#Ejecute on non-root
mkdir /home/"$USER"/.config
mkdir /home/"$USER"/.local
cp config/* /home/"$USER"/.config
cp local/* /home/"$USER"/.local
#Allow Bitmaps
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
sudo rm /etc/mpd.conf
