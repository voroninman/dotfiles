source ~/.bashrc_local
source ~/.bash_colors

git_branch () {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]
  then
    echo " on $(clr_whiteb $branch)"
  fi
}

export CLICOLOR=1
export TERM=xterm-256color
export LS_COLORS='no=00:di=01:ln=00:ex=00'
export LANG=en_GB.UTF-8
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias ll="ls -lah --color"
alias rm="rm -I"
alias tm="tmux a || tmux new-session -s wrapp"

shopt -s cmdhist        # Save multi-line commands in history as single line.
shopt -s histappend     # Append to history rather than overwrite.
shopt -s dotglob        # Include dotfiles for *

PS1='$([ "\j" -gt 0 ] && echo "[\j] ")'
PS1+='$(clr_magenta "\u")'
PS1+=' at '
PS1+='$(clr_green "\h")'
PS1+=" in "
PS1+='$(clr_blue "\w")'
PS1+='$(git_branch)'
PS1+=":\n$ "

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export GOPATH=~/.golang
export PATH=$PATH:$GOPATH/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag -g ""'
