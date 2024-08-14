#!/bin/bash
echo "Pulling Default Config from github"
$SUDO rm ~/.zshrc

wget https://raw.githubusercontent.com/ComputerComa/my-vm-default-setup/main/.zshrc
echo "reloading ZSH"
zsh -ic "omz reload"

echo "======= Setting Timezone ========"
$SUDO timedatectl set-timezone America/Chicago


echo "======== Script Complete ========"
