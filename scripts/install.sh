#!/bin/bash

# install WM and dependencies

pacman -Sq --noconfirm xorg xorg-xinit nitrogen picom nvidia nvidia-utils i3-gaps i3blocks i3lock i3status

# install tools necessary for base use

pacman -Sq --noconfirm terminator pcmanfm lxappearance firefox git arandr dmenu

cp /etc/X11/xinit/xinitrc $HOME/.xinitrc

sed '$d' $HOME/.xinitrc

printf 'picom -f &&\n' >> $HOME/.xinitrc
printf 'nitrogen --restore &&\n' >> $HOME/.xinitrc
printf 'exec i3'
