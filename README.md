# devkit

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
Requires `vim` to be installed.
```bash
git clone https://github.com/nickwu241/dev_util.git ~/devkit
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/devkit && ./vim-setup.sh
```
