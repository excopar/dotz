#!/bin/bash

#sublime-text setup 
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

#Update && Upgrade packages!
sudo pacman -Syyuu 
yay

#Installing packages!
sudo pacman -Syu  sublime-text
sudo pacman -S nvidia-lts 
sudo pacman -S git
sudo pacman -S pwgen 
sudo pacman -S power-profiles-daemon
sudo pacman -S go 
sudo pacman -S clang 
sudo pacman -S python-pip
sudo pacman -S chromium
sudo pacman -S vlc 
sudo pacman -S sqlitebrowser
sudo pacman -S gedit
sudo pacman -S grub-customizer
sudo pacman -S gnome-browser-connector
sudo pacman -S pidgin
sudo pacman -S wireguard-tools
sudo pacman -S remmina
sudo pacman -S gnome-connections
sudo pacman -S neofetch
sudo pacman -S gnome-boxes
sudo pacman -S filezilla
sudo pacman -S obsidian 
sudo pacman -S lua
sudo pacman -S base-devel 
sudo pacman -S ttf-fantasque-sans-mono

#Yay Packages!
yay -S gnome-terminal-transparency
yay -S catppuccin-gtk-theme-mocha catppuccin-gtk-theme-macchiato catppuccin-gtk-theme-frappe catppuccin-gtk-theme-latte

#Delete Packages!
sudo pacman -R gnome-text-editor 

#Setup neofetch 
sudo mkdir /home/$USER/.config/
sudo mkdir /home/$USER/.config/neofetch
sudo cp -r ./neofetch/* /home/$USER/.config/neofetch/
sudo mkdir /root/.config
sudo mkdir /root/.config/neofetch
sudo cp -r ./neofetch/* /root/.config/neofetch

#Setup power-profiles-daemon (if without)!
# sudo systemctl unmask power-profiles-daemon.service
# sudo systemctl start power-profiles-daemon.service

#.bashrc 
sudo cp -r ./bashrc.txt /home/$USER/.bashrc
sudo cp -r ./bashrc.txt /home/root/.bashrc
source /home/$USER/.bashrc
source /home/root/.bashrc

# Grub Installation 
sudo rm -r /boot/grub/themes/starfield
sudo rm -r /usr/share/grub/themes/starfield
sudo mkdir /boot/grub/themes/starfield
sudo mkdir /usr/share/grub/themes/starfield
sudo cp -r ./grub/* /boot/grub/themes/starfield/
sudo cp -r ./grub/* /usr/share/grub/themes/starfield/
sudo grub-customizer