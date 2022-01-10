#!/bin/bash

# VARIABLES
# Home directory name
homedir='/home/andy'


# install WM and dependencies

pacman -Sq --noconfirm xorg xorg-xinit nitrogen picom i3-gaps i3blocks i3lock i3status

# drivers
pacman -Sq --noconfirm nvidia nvidia-utils

# OR
# pacman -Sq --noconfirm xf86-video-qxl

# OR
# pacman -Sq --noconfirm xf86-video-amdgpu

# install tools necessary for base use

pacman -Sq --noconfirm terminator pcmanfm lxappearance firefox git arandr dmenu

cp /etc/X11/xinit/xinitrc ${homedir}/.xinitrc

sed '50,$d' ${homedir}/.xinitrc > ${homedir}/.xinitrc

printf 'xrandr --output Virtual1 --mode 1920x1080\n' >> ${homedir}/.xinitrc
printf 'picom -f &&\n' >> ${homedir}/.xinitrc
printf 'nitrogen --restore &&\n' >> ${homedir}/.xinitrc
printf 'exec i3' >> ${homedir}/.xinitrc
