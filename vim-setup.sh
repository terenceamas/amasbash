#!/bin/sh

mkdir ~/vi_backup


mv ~/.vim ~/.vim0
cp -r .vim ~/.vim

mv ~/.vimrc ~/.vimrc0
cp vimrc ~/.vimrc

chmod -x ~/.vim/colors/*
