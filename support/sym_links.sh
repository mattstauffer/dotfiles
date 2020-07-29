#!/bin/zsh

# @todo mkdir .dotfiles
# @todo: Make this the full and actually correct list
# @todo: add global git ignore
# @todo link aliases
# @todo link functions
# @todo add lambo
#
declare -A sym_links
sym_links=( [zshrc]=~/.zshrc [vimrc]=~/.vimrc )

for key val in ${(kv)sym_links}; do
    echo '@todo'
    echo "$key -> $val"
done

# @todo add sym links to dropbox ~/.ssh/config
