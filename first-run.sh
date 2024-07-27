#!/bin/bash
echo "======== Pulling Updates ======="
apt-get update
echo "======== Installing Updates ========"
apt-get upgrade -y
echo "======== Installing Packages ======="
apt-get install zsh git language-pack-en fonts-powerline -y

echo "======= Setting Default Shell to ZSH ======="

chsh -s $(which zsh)

echo $SHELL

echo "======== Installing OhMyZsh ======="
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

echo "Pulling Default Config from github"
rm ~/.zshrc

wget https://raw.githubusercontent.com/ComputerComa/my-vm-default-setup/main/.zshrc
echo "reloading ZSH"
zsh -ic "omz reload"

echo "======= Setting Timezone ========"
timedatectl set-timezone America/Chicago


echo "======== Script Complete ========"
