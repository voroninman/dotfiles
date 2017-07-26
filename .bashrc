source ~/.bashrc_local

export CLICOLOR=1
export LANG=en_GB.UTF-8
export PATH="/usr/local/sbin:$PATH"

alias ll="ls -lah"
alias tm="tmux a || tmux new-session -s local"
alias gh="open `git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#http://#' -e 's@com:@com/@'`| head -n1"

function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
export PS1="\[\e[30m\]\u@\h: \w \$(parse_git_branch)\n\\[\e[0m\]\$ "

shopt -s cmdhist        # Save multi-line commands in history as single line.
shopt -s histappend     # Append to history rather than overwrite.
shopt -s dotglob        # Include dotfiles for *

export GOPATH=~/.golang
export PATH=$PATH:$GOPATH/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag -g ""'
