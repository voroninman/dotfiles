# Paths
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

export NEWLINE=$'\n'
export PROMPT="%~ ${NEWLINE}# "
export CLICOLOR=1
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --hidden -l ""'

# Autocomplete
autoload -Uz compinit
compinit
fpath=($(brew --prefix)/share/zsh-completions $fpath)
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# Plugins
source <(antibody init)
