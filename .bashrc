source ~/.bashrc_local

export CLICOLOR=1
export TERM=xterm-256color
export LS_COLORS='no=00:di=01:ln=00:ex=00'
export LANG=en_US.UTF-8
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias ll="ls -lah --color"
alias rm="rm -I"
alias tm="tmux a || tmux new-session -s local"

function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
export PS1="\[\e[30m\]\u@\h: \w \$(parse_git_branch)\n\\[\e[0m\]\$ "

shopt -s cmdhist        # Save multi-line commands in history as single line.
shopt -s histappend     # Append to history rather than overwrite.
shopt -s dotglob        # Include dotfiles for *

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export GOPATH=~/.golang
export PATH=$PATH:$GOPATH/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag -g ""'
