#!/bin/sh

cd $HOME
mkdir .log
mkdir vi_backup

cp -r bash/bin .
cp -r bash/.vim .
cp -r bash/.dir_colors .

cp bash/vimrc ./.vimrc
cp bash/screenrc ./.screenrc

cp .bashrc bashrc0
cp bash/bashrc ./.bashrc

chmod -x .dir_colors/dircolors*
chmod -x .vim/colors/*

echo ". $HOME/.bashrc"