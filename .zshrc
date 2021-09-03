alias less="less -RS"
export CLICOLOR=1
export GOPATH=$HOME/Code/go
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export PAGER="less"
export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
setopt APPEND_HISTORY

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --hidden -l ""'

# Autocomplete
autoload -Uz compinit
compinit
fpath=($(brew --prefix)/share/zsh-completions $fpath)
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

# Prompt twists.
function _aws_profile() {
  [[ -n $AWS_PROFILE ]] && echo ' ☋ '$AWS_PROFILE
}
function _git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  [[ -n $branch ]] && echo ' ↘ '$branch
}
function _kube_context() {
  ctx=$(kubectl config current-context 2> /dev/null || true)
  [[ -n $ctx ]] && echo ' ⏣ '$ctx
}
setopt PROMPT_SUBST
export NEWLINE=$'\n'
export PROMPT="%B%~%b"
export PROMPT="${PROMPT}"'%B%F{white}$(_git_branch_name)%b%f'
export PROMPT="${PROMPT}"'%B%F{white}$(_kube_context)%b%f'
export PROMPT="${PROMPT}"'%B%F{white}$(_aws_profile)%b%f'
export PROMPT="${PROMPT}${NEWLINE}# "

# Keep the nudes out of git.
[ -f ~/.zshrc.private ] && source ~/.zshrc.private
