#!/usr/bin/env bash
set -eu

echo '[VIM SETUP] Starting...'

if [ -f ~/.vimrc ]; then
    echo '[VIM SETUP] ERROR: .vimrc already exists. Delete it to use this setup.'
    exit 1
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

cd ~/.vim/bundle/Vundle.vim && git pull origin master

if [ ! -f ~/.vim/specific.vim ]; then
    mkdir -p ~/.vim
    touch ~/.vim/specific.vim
    echo '[VIM SETUP] created ~/.vim/specific.vim'
fi

cd ~ && ln -s ~/devkit/.vimrc
vim +PluginInstall +qall

echo '[VIM SETUP] Completed'

