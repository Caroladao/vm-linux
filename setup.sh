#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

printf "\n== VM LINUX DEVELOPMENT SETUP ==\n"
printf "\nThis will install:"
printf "\n  - Docker CE"
printf "\n  - Docker Compose"
printf "\n  - Docker Machine"

printf "\n\nUpdating package repositories..."
printf "\n* If you see an error during provisioning, destroy your machine and create it again."

sudo apt-get update >> /dev/null

printf "[OK]"
printf "\n\nInstalling basic packages... "

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common >> /dev/null

printf "[OK]"
printf "\n\nInstalling Docker CE"

printf "\n  Adding key... "
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
printf "  Installing... "
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" >> /dev/null
sudo apt-get update >> /dev/null
sudo apt-get install -y docker-ce docker-ce-cli containerd.io >> /dev/null

printf "OK"
printf "\n\nInstalling Docker Compose... "

sudo curl -Ls "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

printf "[OK]"
printf "\n\nInstalling Docker Machine... "

base=https://github.com/docker/machine/releases/download/v0.16.0
curl -Ls $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
sudo install /tmp/docker-machine /usr/local/bin/docker-machine

printf "[OK]"
printf "\n\nGiving current user access to Docker... "

sudo usermod -aG docker vagrant

printf "[OK]"
printf "\n\nSETUP FINISHED ;)\n"
