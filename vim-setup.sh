#!/bin/bash
echo '[VIM SETUP] Starting...'

if [ -f ~/.vimrc ]; then
    echo '[VIM SETUP] ERROR: .vimrc already exists. Delete it to use this setup.'
    exit 1
fi

if [ ! -f ~/.vim/specific.vim ]; then
    mkdir -p ~/.vim
    touch ~/.vim/specific.vim
    echo '[VIM SETUP] created ~/.vim/specific.vim'
fi

cd ~/devkit
cp -f .vimrc ~/
mkdir -p .vim/colors
mkdir -p .vim/autoload
cp -rf .vim/colors/ ~/.vim/colors
cp -rf .vim/autoload/ ~/.vim/autoload
vim +PluginInstall +qall

echo '[VIM SETUP] Completed'

