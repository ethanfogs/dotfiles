#!/bin/sh

# FILE-SYSTEM - READING -------------------------------------------------------

alias l='/bin/ls  -laFGh'
alias la='/bin/ls -aFGh'
alias ll='/bin/ls -laFGh'

which bat  >/dev/null && alias cat='bat'
which tree >/dev/null && alias t='tree -C' && alias tree='tree -C'

# FILE-SYSTEM - WRITING -------------------------------------------------------

alias mkdir='/bin/mkdir -p'

mcd(){
  /bin/mkdir -p "$1" && cd "$1"
}

chx(){
  if [ -x "$1" ]; then chmod -x "$1"; else chmod +x "$1"; fi
}

# TEXT EDITOR -----------------------------------------------------------------

which "$EDITOR" >/dev/null && alias e='$EDITOR'

# GIT -------------------------------------------------------------------------

alias gss='git status >/dev/null && $EDITOR -c "Git | bd 1"'
alias gs="git status --short"
alias gl="git log --oneline --graph"
alias gb="git branch -a"
alias gco="git checkout -b"
alias gch="git checkout"
alias ga="git add"
alias gA="git add ."
alias gd="git diff --minimal"
alias gst="git stash"
alias gc="git commit"
alias gC="git add . && git commit"
alias gp="git push"
alias gP="git pull"

#------------------------------------------------------------------------------

which python3 >/dev/null && alias python='python3'

#------------------------------------------------------------------------------

alias su='/usr/bin/su -l'
alias reboot='sudo /sbin/reboot'

if [ "$(uname)" = "Darwin" ]; then
  alias sysadminctl='sudo /usr/sbin/sysadminctl'
elif [ "$(uname)" = "Linux" ]; then
  alias apt='sudo apt -y'
  alias apt-get='sudo apt-get -y'
fi
