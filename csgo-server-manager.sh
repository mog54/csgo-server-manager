#!/bin/bash

dpkg --add-architecture i386
apt-get update
apt-get upgrade -y
apt-get install curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc tmux lib32gcc1 libstdc++6 libstdc++6:i386 sudo -y


sudo -u csgo bash << EOF

cd /home/csgo
wget -N --no-check-certificate https://gameservermanagers.com/dl/linuxgsm.sh
chmod +x linuxgsm.sh
bash linuxgsm.sh csgoserver
./csgoserver ai
