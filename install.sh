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

### install git
apt install git
sleep 1

### Clone git rep for install
git clone https://github.com/gadmin2151/muz-merci.git
sleep 3
cd muz-merci
cat .crontab.ini >> /etc/crontab
cat .script.ini >> /opt/reloadVLC.sh
cat .service.ini >> /etc/systemd/system/muz.service
sleep 1
systemctl daemon-reload
systemctl enable muz.service
