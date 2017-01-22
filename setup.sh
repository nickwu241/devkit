#!/bin/bash
cp -f .vimrc ~/
cp -rf .vim/colors/ ~/.vim
cp -rf .vim/autoload ~/.vim
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo Done Setup

# Once successful, run :BundleInstall in vim

