#!/bin/sh

cd $HOME
mkdir .log
mkdir vi_backup

cp -r bash/bin .
chmod +x bin/prompt
cp -r bash/.vim .
cp -r bash/.dir_colors .

cp .vimrc 0vimrc
cp bash/vimrc ~/.vimrc
cp bash/screenrc ~/.screenrc

cp .bashrc 0bashrc
#cat .bashrc >> bash/bashrc
cat bash/bashrc >> ~/.bashrc

chmod -x .dir_colors/dircolors*
chmod -x .vim/colors/*

echo ". $HOME/.bashrc"
