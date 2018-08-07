#!/bin/sh

if [ ! -L ~/.git-completion.bash ]; then
    ln -s -T /usr/share/bash-completion/completions/git ~/.git-completion.bash
fi

if [ ! -L ~/.git-prompt.sh ]; then
    ln -s -T /usr/lib/git-core/git-sh-prompt ~/.git-prompt.sh
fi

cp -T --backup=numbered --update bash_aliases ~/.bash_aliases

grep -q '\.\ \~/\.bashrc-append' ~/.bashrc || echo \
"\nif [ -f ~/.bashrc-append ]; then\n    . ~/bashrc-append\nfi" >> ~/.bashrc
cp -T --backup=numbered --update bashrc-append ~/.bashrc

cp -T --backup=numbered --update gitconfig ~/.gitconfig

. ~/.bashrc
