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

chsh -s $(which zsh)

echo $SHELL

echo "======= Setting Timezone ========"
$SUDO timedatectl set-timezone America/Chicago


echo "======== Script Complete ========"
