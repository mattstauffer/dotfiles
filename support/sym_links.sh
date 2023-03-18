#!/bin/zsh

declare -A sym_links
sym_links=( [zshrc]=$HOME/.zshrc [vimrc]=$HOME/.vimrc [gitignore]=$HOME/.gitignore [lambo]=$HOME/.lambo)

for key val in ${(kv)sym_links}; do
    if test -f "$val"; then
        echo "$val already exists as a folder; deleting."
    fi 
    if [ -d "$val" ]; then
        echo "$val already exists as a file; deleting."
    fi

    ln -s $my_dir/../files/$key $val
done

if test -f "$HOME/.ssh/config"; then
    echo "$HOME/.ssh/config already exists; skipping symlink."
else 
    ln -s $HOME/Dropbox\ \(Personal\)/Apps/Dotfiles/symlinks/ssh-config $HOME/.ssh/config
fi

echo 'XX -- Symlinks done.'
