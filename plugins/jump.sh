jumprc=$HOME/.jumprc

function jump { 
    cd -P "$jumprc/$1" 2>/dev/null || echo "No such jump destination: $1"
}

function jump-add { 
    mkdir -p "$jumprc"; ln -s "$(pwd)" "$jumprc/$1"
}

function jump-del { 
    rm -i "$jumprc/$1"
}

function jump-list {
    ls -l "$jumprc" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}