#!/bin/bash
GREEN='\033[0;32m'
NOCOLOR='\033[0m'

echo -e "${GREEN}Updating and upgrading packages. If this doesn't work run 'fileFormatCorrector.sh'${NOCOLOR}\n"

sudo apt-get update
apt-get -y upgrade

echo -e "${GREEN}installing curl${NOCOLOR}\n"
apt-get install curl -y

echo -e "${GREEN}installing wget${NOCOLOR}\n"
apt-get install wget -y

echo -e "${GREEN}installing gnupg${NOCOLOR}\n"
apt-get install gnupg2 -y

echo -e "${GREEN}getting node sources${NOCOLOR}\n"
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

echo -e "${GREEN}getting chrome sources${NOCOLOR}\n"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

echo -e "${GREEN}updating from new sources${NOCOLOR}\n"
apt-get update -y

echo -e "${GREEN}installing chrome${NOCOLOR}\n"
apt-get install -y google-chrome-stable

echo -e "${GREEN}installing node${NOCOLOR}\n"
apt-get install -y npm

echo -e "${GREEN}installing angular cli${NOCOLOR}\n"
npm install -g @angular/cli

echo -e "${GREEN}installing firebase tools${NOCOLOR}\n"
npm install -g firebase-tools
