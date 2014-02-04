#!/bin/sh

# Add custom theme
mkdir ~/.dotfiles/oh-my-zsh/custom/themes/ 2> /dev/null
ln -s ~/.dotfiles/giakki.zsh-theme ~/.dotfiles/oh-my-zsh/custom/themes/giakki.zsh-theme
# Link .zshrc
rm ~/.zshrc 2> /dev/null
ln -s ~/.dotfiles/.zshrc ~/.zshrc