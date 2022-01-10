#!/bin/bash

# install WM and dependencies

pacman -Sq --noconfirm xorg xorg-xinit nitrogen picom i3-gaps i3blocks i3lock i3status

# drivers
pacman -S nvidia nvidia-utils

# OR
# pacman -S xf86-video-qxl

# OR
# pacman -S xf86-video-amdgpu

# install tools necessary for base use

pacman -Sq --noconfirm terminator pcmanfm lxappearance firefox git arandr dmenu

cp /etc/X11/xinit/xinitrc $HOME/.xinitrc

sed '50,$d' $HOME/.xinitrc > $HOME/.xinitrc

printf 'xrandr --output Virtual1 --mode 1920x1080\n' >> $HOME/.xinitrc
printf 'picom -f &&\n' >> $HOME/.xinitrc
printf 'nitrogen --restore &&\n' >> $HOME/.xinitrc
printf 'exec i3' >> $HOME/.xinitr
