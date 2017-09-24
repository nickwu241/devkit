#!/bin/bash

echo "[DEV SETUP] Starting..."
cd ~/dev_utilities

if [ ! -f ~/.vim/specific.vim ]; then
  mkdir -p ~/.vim
  touch ~/.vim/specific.vim;
  echo "-- created specific.vim";
fi

cp -f .vimrc ~/
mkdir -p .vim/colors
mkdir -p .vim/autoload
cp -rf .vim/colors/ ~/.vim/colors
cp -rf .vim/autoload/ ~/.vim/autoload
vim +PluginInstall +qall

echo "[DEV SETUP] Completed!"
