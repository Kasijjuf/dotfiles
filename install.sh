#!/bin/sh

ln -s -T /usr/share/bash-completion/completions/git ~/.git-completion.bash
ln -s -T /usr/lib/git-core/git-sh-prompt ~/.git-prompt.sh
cp -T --backup=numbered --update bash_aliases ~/.bash_aliases
cat bashrc.append >> ~/.bashrc
cp -T gitconfig ~/.gitconfig

. ~/.bashrc
