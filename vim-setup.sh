#!/bin/bash
set -euo pipefail

echo 'Starting vim setup...'

if [ -f ~/.vimrc ] || [ -L ~/.vimrc ]; then
    echo 'ERROR: .vimrc already exists. Delete it to use this setup.'
    exit 1
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
git -C ~/.vim/bundle/Vundle.vim pull origin master

ln -s "$(cd "$(dirname "$0")" ; pwd -P )"/.vimrc ~/.vimrc
vim +PluginInstall +qall

echo 'Completed vim setup'
