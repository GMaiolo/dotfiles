# navigation
alias cd..='cd ..'
alias ..='cd ..'
alias ,,='cd ..'
alias ~='cd ~'
alias home='cd ~'
mkcd() { mkdir -p $1 && cd $1 }
sym() { ln -s "$1" "$2" }

# files and folders handling
alias mkdir='mkdir -p'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# common
alias cls='xdotool key ctrl+shift+l'

# git
alias g='git'
alias gd='git diff'
alias gs='git status'
alias gb='git branch'
alias gbd='git branch -D'
alias pull='git pull'
alias push='git push'
alias gf='git fetch --all'
alias ch='git checkout'
alias gc='git commit -am'

# core
open() { nautilus "$1" }
shut() { shutdown -t 0 }

# apps
browse() { google-chrome "$1" }

# work
spec() {
    calendar=calendar.google.com
    mail=mail.google.com
    globantProfile="Profile 1"
    google-chrome $calendar $mail --profile-directory=$globantProfile
    cd ~/development/spec
    code ./
    slack
    sleep 10s
    cls
    git pull
    gulp serve
}