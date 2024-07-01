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


echo "======== Setting ZSH Defaults ========"
omz theme set agnoster
omz reload

echo "======== Script Complete ========"
