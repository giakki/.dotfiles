ZSH=$HOME/.dotfiles/oh-my-zsh

ZSH_THEME="giakki"

COMPLETION_WAITING_DOTS="true"

plugins=(git command-not-found node npm)

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.dotfiles/functions.sh
source ~/.dotfiles/aliases.sh
source ~/.dotfiles/plugins/*.sh

export PATH=$HOME/.gem/ruby/2.1.0/bin:$HOME/bin:/usr/local/bin:$HOME/.cabal/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM


# added by travis gem
[ -f /home/gix/.travis/travis.sh ] && source /home/gix/.travis/travis.sh

NPM_PACKAGES="/home/gix/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
