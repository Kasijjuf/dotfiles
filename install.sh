#!/bin/sh

wget -O ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget -O ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
cat bash_aliases.append >> ~/.bash_aliases
cat bashrc.append >> ~/.bashrc
cp -T gitconfig ~/.gitconfig

# gsmartcontrol settings
# ======================
#
# Create gsmartcontrol config directory if necessary
mkdir -p ~/.config/gsmartcontrol
# TODO Rewrite to modify gsmartcontrol.conf instead of completely replacing it
cp -t  ~/.config/gsmartcontrol config/gsmartcontrol/gsmartcontrol.conf

. ~/.bashrc
