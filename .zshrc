ZSH=$HOME/.dotfiles/oh-my-zsh

ZSH_THEME="giakki"

COMPLETION_WAITING_DOTS="true"

plugins=(git command-not-found node npm)

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.dotfiles/functions.sh
source ~/.dotfiles/aliases.sh
source ~/.dotfiles/plugins/*.sh

export PATH=$HOME/bin:/usr/local/bin:$HOME/.cabal/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
