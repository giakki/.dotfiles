ZSH=$HOME/.dotfiles/oh-my-zsh

ZSH_THEME="giakki"

COMPLETION_WAITING_DOTS="true"

plugins=(git command-not-found node npm wd)

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.dotfiles/lib/functions.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH