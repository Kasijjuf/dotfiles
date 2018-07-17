#!/bin/sh

ln -s -T /usr/share/bash-completion/completions/git ~/.git-completion.bash
ln -s -T /usr/lib/git-core/git-sh-prompt ~/.git-prompt.sh
cat bash_aliases.append >> ~/.bash_aliases
cat bashrc.append >> ~/.bashrc
cp -T gitconfig ~/.gitconfig

. ~/.bashrc
