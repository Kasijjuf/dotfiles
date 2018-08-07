#!/bin/sh

# git-completion
if [ ! -L ~/.git-completion.bash ]; then
    ln -s -T /usr/share/bash-completion/completions/git ~/.git-completion.bash
fi

# git-prompt
if [ ! -L ~/.git-prompt.sh ]; then
    ln -s -T /usr/lib/git-core/git-sh-prompt ~/.git-prompt.sh
fi

# bash_aliases
cp -T --backup=numbered --update bash_aliases ~/.bash_aliases

# bashrc
grep -q '\.\ \~/\.bashrc-append' ~/.bashrc || echo \
"\nif [ -f ~/.bashrc-append ]; then\n    . ~/.bashrc-append\nfi" >> ~/.bashrc
cp -T --backup=numbered --update bashrc-append ~/.bashrc-append

# gitconfig
cp -T --backup=numbered --update gitconfig ~/.gitconfig

. ~/.bashrc
