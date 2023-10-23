#!/bin/bash

### install anydesk
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
apt update
apt install anydesk -y
sleep 2
echo "Qweasd123!@#" | anydesk --set-password

### install vlc
apt install vlc
sleep 1

### Clone git rep for install
cat .crontab.ini >> /etc/crontab
cat .script.ini >> /opt/reloadVLC.sh
mkdir /home/gadmin/.config/autostart/
sleep 1
cat .service.ini >> /home/gadmin/.config/autostart/music-client.desktop


