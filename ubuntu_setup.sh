#!/bin/bash

echo "Welcome to Ubuntu setup"

sudo apt update && sudo apt upgrade 

read -p "Want to install VSCode? (y/n): " input
if [ "$input" = "y" ]; then
    sudo snap install --classic code
fi

read -p "Want to install Brave? (y/n): " input
if [ "$input" = "y" ]; then
	sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser && sudo snap remove firefox
fi

read -p "Want to install Android Studio? (y/n): " input
if [ "$input" = "y" ]; then
    sudo snap install android-studio --classic
fi

read -p "Want to install Vim? (y/n): " input
if [ "$input" = "y" ]; then
    sudo apt install vim
fi

read -p "Want to remove libre office? (y/n): " input
if [ "$input" = "y" ]; then
    sudo apt remove -y libreoffice*
fi

read -p "Want to install Discord? (y/n): " input
if [ "$input" = "y" ]; then
    sudo snap install discord
fi

read -p "Want to install git? (y/n): " input
if [ "$input" = "y" ]; then
    sudo apt install git
fi

read -p "Want to install java? (y/n): " input
if [ "$input" = "y" ]; then
    sudo apt install default-jdk
    sudo apt install default-jre
fi

read -p "Want to install Tweak? (y/n): " input
if [ "$input" = "y" ]; then
    sudo apt install gnome-tweaks
fi

read -p "Want to install VLC player? (y/n): " input
if [ "$input" = "y" ]; then
     sudo snap install vlc
     sudo rm /var/cache/fontconfig/*
rm ~/.cache/fontconfig/*
fc-cache -r
fi

echo "Finished Ubuntu setup"

