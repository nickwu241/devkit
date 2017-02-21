#!/bin/bash

# Need to run this first:
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# then bash setup.sh
echo "Starting Setup"
cd ~/dev_utilities

if [ ! -f ~/specific.vim ]; then
  touch ~/specific.vim;
  echo "Created specific.vim";
 fi

cp -f .vimrc ~/
mkdir -p .vim/colors
mkdir -p .vim/autoload
cp -rf .vim/colors/ ~/.vim/colors
cp -rf .vim/autoload/ ~/.vim/autoload
vim +PluginInstall +qall

echo "Done"
