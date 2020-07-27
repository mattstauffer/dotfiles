#!/bin/zsh

# @todo: Make this the full and actually correct list
declare -A sym_links
sym_links=( [.zshrc]=~/.zshrc [.vimrc]=~/.vimrc [.ssh-config]=~/.ssh/config )

for key val in ${(kv)sym_links}; do
    if pretend; then
        echo "$key -> $val"
    else
        echo '@todo'
        exit
    fi
done
