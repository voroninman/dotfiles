export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="~/.cargo/bin:$PATH"
export PATH="~/.local/bin:$PATH"

export PROMPT="%~ ⚡️ "
export CLICOLOR=1
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

autoload -Uz compinit
compinit
fpath=($(brew --prefix)/share/zsh-completions $fpath)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --hidden -l ""'

export PATH="/usr/local/opt/openjdk/bin:$PATH"
