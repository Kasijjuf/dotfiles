#!/bin/sh

wget -O ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget -O ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
cat bashrc.append >> ~/.bashrc
cp -T gitconfig ~/.gitconfig

# TODO fix this line to create destination directory if necessary
#cp -T config/gsmartcontrol/gsmartcontrol.conf ~/.config/gsmartcontrol/gsmartcontrol.conf

. ~/.bashrc
