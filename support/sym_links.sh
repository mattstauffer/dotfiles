#!/bin/zsh

declare -A sym_links
sym_links=( [zshrc]=~/.zshrc [vimrc]=~/.vimrc [gitignore]=~/.gitignore [lambo]=~/.lambo)

for key val in ${(kv)sym_links}; do
    # @todo
    echo "ln -s $my_dir/../files/$key $val"
done

# @todo
echo "ln -s ~/Dropbox (Personal)/Apps/Dotfiles/symlinks/ssh-config ~/.ssh/config"
