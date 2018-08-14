#!/bin/bash
set -euxo pipefail

SCRIPT_DIR="$(dirname "$0")"

# Install xcode CLI
xcode-select -p &> /dev/null || xcode-select --install

# Install Homebrew if not installed
which brew &> /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update to latest version
brew update

# Upgrade formulaes that are already installed
brew upgrade

# Install using Brewfile
brew bundle --file="$SCRIPT_DIR/Brewfile"
