#core
alias cls="xdotool key ctrl+shift+k"
alias cd..="cd .."
alias mkdir="mkdir -p"
mcd () {
    mkdir -p $1
    cd $1
}
open() {
    dolphin "$1" &
}
sym() {
    ln -s "$1" "$2"
}

#to make possibly destructive commands interactive
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

#git
alias g="git"
alias gd="git diff"
alias gs="git status"
alias gb="git branch"
alias gbd="git branch -D"
alias pull="git pull"
alias push="git push"
alias gf="git fetch --all"
alias ch="git checkout"
alias gc="git commit -am"

#apps
browse() {
    chromium-browser "$1" &
}

#others
alias spec="code ~/development/spec && ~/development/spec"
