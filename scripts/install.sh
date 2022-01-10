#!/bin/bash

# install WM and dependencies

pacman -S xorg xorg-xinit nitrogen picom nvidia nvidia-utils

# install tools necessary for base use

pacman -S terminator pcmanfm lxappearance firefox git
