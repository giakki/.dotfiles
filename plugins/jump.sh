## variables
local JUMP_CONFIG=$HOME/.jumprc

# check if config file exists
if [[ ! -a $JUMP_CONFIG ]]
then
  # if not: create config file
  touch $JUMP_CONFIG
fi

function jump() {
    cd $(awk '$1~/^'$1'$/ {print $2}' $JUMP_CONFIG)
}

function jump-add() {
    echo "$1 $(pwd)" >> $JUMP_CONFIG
}

function jump-remove() {
    sed -i "/^$1/d" $JUMP_CONFIG
}