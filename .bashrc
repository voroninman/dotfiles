PS1='$([ \j -gt 0 ] && echo "[\j] ")\e[0;35m\u\e[m at \e[0;32m\H\e[m in \e[0;34m\w\e[m:\n\$ '
export CLICOLOR=1
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
