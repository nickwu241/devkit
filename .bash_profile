# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=$HOME/bin:$PATH
PATH=$HOME/.devkit/bin:$PATH
export PATH

export GOPATH=$HOME/src
# Keep bash history forever, append on each command.
HISTSIZE=
HISTFILESIZE=
HISTCONTROL=ignoredups
shopt -s histappend
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion"
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
fi

