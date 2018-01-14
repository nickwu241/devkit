# devkit
Make sure you have `git` installed, then to clone this repo:
```shell
git clone https://github.com/nickwu241/devkit.git
```

### Git
Requires `git` to be installed.
```shell
# change these values as needed
git config --global user.name "Nicholas Wu"
git config --global user.email nickwu241@gmail.com

git config --global core.editor vim
git config --global push.default current

git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.cm 'commit -m'
git config --global alias.sl 'log --oneline -n 10'
git config --global alias.dc 'diff --cached'
git config --global alias.slo 'log --oneline'
git config --global alias.pub '!git push origin $(git rev-parse --abbrev-ref HEAD)'
```

### Vim
Requires `git` and `vim` to be installed.
```shell
./vim-setup.sh
```

### Homebrew & packages (macOS)
```shell
cd macos && ./brew-setup.sh
```

### Other
My rough notes will be in [this gist](https://gist.github.com/nickwu241/1abc77d7352c6252127f16a1af6ceb45).
