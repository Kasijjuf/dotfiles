#!/bin/sh

wget -O ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget -O ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
cat bash_aliases.append >> ~/.bash_aliases
cat bashrc.append >> ~/.bashrc
cp -T gitconfig ~/.gitconfig

. ~/.bashrc
