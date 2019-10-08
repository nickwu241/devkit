# Developer's Toolkit

## Development Tips and Tricks

See [nickwu241/development-tips-and-tricks.md](https://gist.github.com/nickwu241/1abc77d7352c6252127f16a1af6ceb45).

## Setup your Machine

Clone this repo:

```shell
git clone https://github.com/nickwu241/devkit.git
```

Setup:

```shell
# Set up vim, requires: git, vim
./bootstrap-vim.sh
# Set up git config and aliases, requires: git
./git-config.sh
# Install xcode CLI & apps from Brewfile and set up macOS defaults
./macos/install.sh
./macos/defaults.sh
# Set symlinks to dotfiles & vscode settings
# Alternatively, pick out anything you like from the dotfiles
./create-links.sh
# Install VSCode extensions, change 'code-insiders' to 'code' if using stable
cat vscode/extensions.txt | xargs -L 1 code-insiders --install-extension
```

### Git

Requirements: `git`

```shell
# Change these values as you see fit
git config --global user.name "Nick Wu"
git config --global user.email nickwu241@gmail.com

git config --global core.editor vim
git config --global pager.branch false  
git config --global push.default current

git config --global alias.b branch
git config --global alias.co checkout
git config --global alias.s 'status -s'
git config --global alias.cm 'commit -m'
git config --global alias.cam 'commit -am'
git config --global alias.amend 'commit --amend --no-edit'
git config --global alias.amende 'commit --amend'
git config --global alias.sl 'log --oneline -n 10'
git config --global alias.slo 'log --oneline'
git config --global alias.diffc 'diff --cached'
git config --global alias.pub '!git push origin $(git rev-parse --abbrev-ref HEAD)'
git config --global alias.bc '!git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
```

Consider setting up SSH to Github: https://help.github.com/articles/connecting-to-github-with-ssh/

### macOS

Consider installing `Android File Transfer`, `Google Drive` since there're no homebrew casks for these.

Alternative to running [./macos/defaults.sh](https://github.com/nickwu241/devkit/blob/master/macos/bootstrap.sh), you might want to just set:

- System Preferences > Keyboard

  - Increase Key Repeat Rate
  - Decrease Delay Until Repeat
  - Modifier Keys > `Caps Lock` mapped to `Esc`

- System Preferences > Trackpad

  - Decrease Click
  - Increase Tracking speed

### Chrome Extensions

- [vimium](https://vimium.github.io): quick navigation and tab switching
- [octotree](https://github.com/buunguyen/octotree): viewing Github repos like filesystem
- [JSONViewer](https://github.com/teocci/JSONViewer-for-Chrome): viewing JSON data
