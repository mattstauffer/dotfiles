#!/bin/bash

if [ $SHELL != '/bin/zsh' ]; then
    chsh -s /usr/local/bin/zsh
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    mv $HOME/.zshrc.pre-oh-my-zsh $HOME/.zshrc
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
fi