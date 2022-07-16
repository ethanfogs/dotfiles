alias ls="ls -FG"
alias ll="ls -lFG"
alias la="ls -aFG"
alias lla="ls -laFG"
alias lal="ls -laFG"

function trash(){
    for file in $*; do
        [[ $file =~ ".*.DS_Store" ]] && rm -rf $file || mv $file ~/.Trash
    done;
}

alias rm='trash'

alias mkdir='mkdir -p'
function mcd(){ mkdir -p "${1}" && cd "${1}"; }

alias chx='chmod +x'

alias edit=$EDITOR
alias e=$EDITOR

function files(){ find ${@:-.} -not -type d 2> /dev/null | sort; }
function dirs (){ find ${@:-.} -type d 2> /dev/null | sort; }

alias fs='files'
alias ds='dirs'

alias tree='tree -C'

alias gs="git status --short"
alias gS="git status"
alias gl="git log --oneline"
alias gsh="git show --oneline"
alias gb="git branch"
alias gbr="git branch"
alias gch="git checkout -b"
alias gco="git checkout -b"
alias gsw="git switch"
alias ga="git add"
alias gA="git add ."
alias gc="git commit"
alias gC="git add . && git commit"
alias gp="git push"
alias gps="git push"
alias gP="git pull"
alias gpl="git pull"
alias gm="git merge"

# vim: filetype=bash:
