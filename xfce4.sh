#!/bin/bash

# Post installation script

# Sync directories

sudo pacman -Syy

echo "syncing repos..."
echo " "
echo " "

# Installing Amd Drivers

echo "Installing Amd Drivers"

sudo pacman -Sy xf86-video-amdgpu xf86-video-ati mesa vulkan-radeon libva-mesa-driver

# Install Pulseaudio

sudo pacman -Sy alsa-lib alsa-plugins alsa-firmware pulseaudio pulseaudio-alsa pulseaudio-jack pavucontrol

# Installing Utilities

sudo pacman -Sy neofetch htop gparted xdg-utils xarchiver p7zip unzip unrar nano openssh wget iwd wireless-tools wpa-supplicant smartmontools networkmanager network-manager-applet firefox mpv

# Install Xorg

echo "installing a functional xorg"

sudo pacman -Sy xorg-server xorg-xinit xorg-apps

# Installing Xfce4-mod

sudo pacman -Sy xfce4 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings mousepad thunar-archive-plugin thunar-media-tags-plugin xfce4-datetime-plugin xfce4-mount-plugin xfce4-notifyd xfce4-pulseaudio-plugin xfce4-screenshooter xfce4-taskmanager xfce4-verve-plugin xfce4-wavelan-plugin xfce4-whiskermenu-plugin


echo "Enabling Proccesses"

systemctl enable lightdm
systemctl enable NetworkManager


echo "Done..."

 
