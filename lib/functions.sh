# Remove leftover configuration files
function apt-purge {
	sudo apt-get purge $(dpkg -l | awk '/^rc/{print $2}')
}

# Move to trash
function trash {
    cp -rf "$@" ~/.local/share/Trash/files && rm -rf "$@"
}

function apache-watch {
    while inotifywait -e modify /var/log/apache2/error.log; do
        clear
        cat /var/log/apache2/error.log
    done
}

function most-used {
    history | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr
}