#!/bin/bash
# Set up symlinks
DIR=$(dirname $0)
ln -s $DIR/.aliases ~/.aliases
ln -s $DIR/.bash_profile ~/.bash_profile
ln -s $DIR/.bash_prompt ~/.bash_prompt
mkdir -p ~/.devkit && ln -s $DIR/bin ~/.devkit/bin
