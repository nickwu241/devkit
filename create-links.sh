#!/bin/bash
### Script to create symbolic links to stay sync'd

# Get the absolute path of the respository root
DIR=$(cd "$(dirname "$0")"; pwd -P)
# macOS specific path, see https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations
VSCODE_USER_SETTINGS_FILE="$HOME/Library/Application Support/Code - Insiders/User/settings.json"

# Set up symlinks
ln -s "$DIR/.aliases" ~/.aliases
ln -s "$DIR/.bash_profile" ~/.bash_profile
ln -s "$DIR/.bash_prompt" ~/.bash_prompt
ln -s "$DIR/.path" ~/.path
ln -s "$DIR/vscode/settings.json" "$VSCODE_USER_SETTINGS_FILE"
mkdir -p ~/.config && ln -s "$DIR/.config/pycodestyle" ~/.config/pycodestyle
mkdir -p ~/.devkit && ln -s "$DIR/scripts/" ~/.devkit/bin/
