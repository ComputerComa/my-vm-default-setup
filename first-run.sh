#!/bin/bash
SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
fi
$SUDO a_command

echo "======== Pulling Updates ======="
$SUDO apt-get update
echo "======== Installing Updates ========"
$SUDO apt-get upgrade -y
echo "======== Installing Packages ======="
$SUDO apt-get install zsh git language-pack-en fonts-powerline -y

echo "======= Setting Default Shell to ZSH ======="

$SUDO chsh -s $(which zsh)

echo $SHELL

echo "======== Installing OhMyZsh ======="
$SUDO sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

echo "Pulling Default Config from github"
$SUDO rm ~/.zshrc

wget https://raw.githubusercontent.com/ComputerComa/my-vm-default-setup/main/.zshrc
echo "reloading ZSH"
zsh -ic "omz reload"

echo "======= Setting Timezone ========"
$SUDO timedatectl set-timezone America/Chicago


echo "======== Script Complete ========"
