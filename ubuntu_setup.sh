#!/bin/bash

echo "Welcome to Ubuntu setup"

sudo apt update && sudo apt upgrade 
sudo apt install nala && sudo nala update && sudo nala 

read -p "Want to install VSCode? (y/n): " input
if [ "$input" = "y" ]; then
    sudo snap install --classic code
fi

read -p "Want to install Brave? (y/n): " input
if [ "$input" = "y" ]; then
	sudo nala install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala install brave-browser && sudo snap remove firefox
fi

read -p "Want to install Android Studio? (y/n): " input
if [ "$input" = "y" ]; then
    sudo snap install android-studio --classic
fi

read -p "Want to install Vim? (y/n): " input
if [ "$input" = "y" ]; then
    sudo nala install vim
fi

read -p "Want to remove libre office? (y/n): " input
if [ "$input" = "y" ]; then
    sudo nala remove -y libreoffice*
fi

read -p "Want to install Discord? (y/n): " input
if [ "$input" = "y" ]; then
    sudo snap install discord
fi

read -p "Want to install git? (y/n): " input
if [ "$input" = "y" ]; then
    sudo nala install git
fi

read -p "Want to install java? (y/n): " input
if [ "$input" = "y" ]; then
    sudo nala install default-jdk
    sudo nala install default-jre
fi

read -p "Want to install Tweak? (y/n): " input
if [ "$input" = "y" ]; then
    sudo nala install gnome-tweaks
fi

read -p "Want to install VLC player? (y/n): " input
if [ "$input" = "y" ]; then
     sudo snap install vlc
fi

echo "Finished Ubuntu setup"

