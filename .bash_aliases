#core
alias cls="xdotool key ctrl+shift+k"
open() {
    dolphin "$1" &
}

#git
alias g="git"
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