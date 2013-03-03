# -*- mode: sh;-*-
source $ZDOTDIR/install.zsh

if which ssh-agent >/dev/null; then
    agent() {
        eval $(ssh-agent) >/dev/null
        ssh-add ~/.ssh/privat
        ssh-add ~/.ssh/debian
        is434 && add-zsh-hook zshexit _kill_agent
    }


    _kill_agent() {
        ssh-agent -k
    }
fi
