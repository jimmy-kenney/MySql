#!/bin/bash

sudo apt remove docker docker-engine docker.io containerd runc

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt install -y docker-ce docker-ce-cli containerd.io

USER=$(whoami)

sudo usermod -aG docker "$USER"

echo "You will need to log out and log back in to complete docker install"
