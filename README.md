# devkit

To clone this repo:

```shell
git clone https://github.com/nickwu241/devkit.git
```

### Bash

At the base of this repository, run:

```shell
ln -s $(pwd)/.aliases ~/.aliases
ln -s $(pwd)/.bash_profile ~/.bash_profile
ln -s $(pwd)/.bash_prompt ~/.bash_prompt
```

### Git

Requirements: `git`

```shell
# Change these values as you see fit
git config --global user.name "Nick Wu"
git config --global user.email nickwu241@gmail.com

git config --global core.editor vim
git config --global push.default current

git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.st 'status -s'
git config --global alias.cm 'commit -m'
git config --global alias.cam 'commit -am'
git config --global alias.sl 'log --oneline -n 10'
git config --global alias.slo 'log --oneline'
git config --global alias.diffc 'diff --cached'
git config --global alias.pub '!git push origin $(git rev-parse --abbrev-ref HEAD)'
git config --global alias.brc '!git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
```

### Vim

Requirements: `git`, `vim`

```shell
./vim-setup.sh
```

### macOS

Note: look into these scripts to see what will change.

```shell
./macos/defaults.sh
# Install applications and programs specified in macos/Brewfile
./macos/brew-setup.sh
```

Consider installing `Android File Transfer`, `Google Drive` since there're no homebrew casks for these.

If you don't want to run `macos/defaults.sh`, you might want to just set:

- System Preferences > Keyboard

  - Increase Key Repeat Rate
  - Decrease Delay Until Repeat

- System Preferences > Trackpad

  - Decrease Click
  - Increase Tracking speed

### Chrome Extensions

- [vimium](https://vimium.github.io): quick navigation and tab switching
- [octotree](https://github.com/buunguyen/octotree): viewing Github repos like filesystem
- [JSONViewer](https://github.com/teocci/JSONViewer-for-Chrome): viewing JSON data

### Development Tips and Tricks

See [nickwu241/development-tips-and-tricks.md](https://gist.github.com/nickwu241/1abc77d7352c6252127f16a1af6ceb45).
