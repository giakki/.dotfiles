# sudo pls
function sudo-prepend() {
    if [ -n "${BUFFER## *}" ]; then
        local BUFFER="sudo ${BUFFER## *sudo }"
        zle end-of-line
        zle accept-line
    fi
}
zle -N sudo-prepend
bindkey "^O" sudo-prepend

# Remove leftover configuration files
function apt-purge {
	sudo apt-get purge $(dpkg -l | awk '/^rc/{print $2}')
}

# Watch apache logfile
function apache-watch {
    while inotifywait -e modify /var/log/apache2/error.log; do
        clear
        cat /var/log/apache2/error.log
    done
}

# Extract anything
function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf "$1"    ;;
            *.tar.gz)    tar xvzf "$1"    ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar x "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xvf "$1"     ;;
            *.tbz2)      tar xvjf "$1"    ;;
            *.tgz)       tar xvzf "$1"    ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}
