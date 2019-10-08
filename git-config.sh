#!/bin/sh
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
