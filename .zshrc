# brew
eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null)"
eval "$(~/.homebrew/bin/brew shellenv 2>/dev/null)"

# pipx
export PATH=$PATH:$HOME/.local/bin

# Go
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"

# Pager
export PAGER="less"
alias less="less -RS"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --hidden -l ""'

# Autocomplete
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# Autocomplete from bash
autoload -U +X bashcompinit && bashcompinit

# ls colors
export CLICOLOR=1

# Prompt
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
export PROMPT="%B%1~%b"
export PROMPT="${PROMPT}"'%B%F{white}$(_git_branch_name)%b%f'
export PROMPT="${PROMPT}"'%B%F{white}$(_kube_context)%b%f'
export PROMPT="${PROMPT}"'%B%F{white}$(_aws_profile)%b%f'
export PROMPT="${PROMPT}"$'\n'"%# "

# Nudes
[ -f ~/.zshrc.private ] && source ~/.zshrc.private
