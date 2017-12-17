# devkit
To clone this repo:
```bash
git clone https://github.com/nickwu241/devkit.git ~/devkit
```

### Git
Requires `git` to be installed.
```bash
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
git config --global alias.slo 'log --oneline'
git config --global alias.pub '!git push origin $(git rev-parse --abbrev-ref HEAD)'
```

### Vim
Requires `git` and `vim` to be installed.
```bash
# assuming you've already cloned this repository
cd ~/devkit 
./vim-setup.sh
```
