#!/bin/bash

pushd $(dirname $0) > /dev/null

# Init zsh
git submodule init
git submodule update

#Install dependencies
sudo apt-get install trash-cli

# Add custom theme
mkdir ~/.dotfiles/oh-my-zsh/custom/themes/
ln -s ~/.dotfiles/giakki.zsh-theme ~/.dotfiles/oh-my-zsh/custom/themes/giakki.zsh-theme
# Link .zshrc
rm ~/.zshrc 2> /dev/null
ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Jump plugin
mkdir ~/.jumprc

echo "Installation successful!"

popd
