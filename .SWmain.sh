#! /bin/sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo pacman -S yay \
vim \
firefox \
anki \
beets \
volumeicon \
ranger \
vifm \
blueman \
flameshot \
feh \
rofi \
rxvt-unicode \
mupdf
yay -S soulseekqt
