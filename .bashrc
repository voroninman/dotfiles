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
export PATH="/usr/local/sbin:$PATH"

PS1='$([ "\j" -gt 0 ] && echo "[\j] ")'
PS1+='$(clr_magenta "\u")'
PS1+=' at '
PS1+='$(clr_green "\H")'
PS1+=" in "
PS1+='$(clr_blue "\W")'
PS1+='$(git_branch)'
PS1+=":\n$ "

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
