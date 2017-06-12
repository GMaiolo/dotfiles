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
shutdownNow() {
    shutdown -t 0
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
spec() {
    calendar=calendar.google.com
    mail=mail.google.com
    globantProfile="Profile 1"
    code ~/development/spec
    nohup chromium-browser $calendar $mail --profile-directory=$globantProfile &
    nohup slack &
    sleep 10s
    cd ~/development/spec
    xdotool key ctrl+shift+k
    git pull
    gulp serve
}
