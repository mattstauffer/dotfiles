#!/bin/bash

# Hide the desktop
defaults write com.apple.finder CreateDesktop -bool false && killall Finder

# choosy as browser
echo "TODO: set choosy as browser"

# disable spotlight suggestions
echo "TODO: disable spotlight suggestions"

# full keyboard access; all controls
echo "TODO: full keyboard access; all controls"

# iterm use solarized dark
echo "TODO: iterm2 use solarized dark"

# iterm use dejavu sans mono for powerline
echo "TODO: iterm2 use dejavu sans mono for powerline"

# set caps lock as esc
echo "TODO: set caps lock as esc"

# set alfred up to sync from dropbox file
echo "TODO: set alfred up to sync from dropbox file"

# activate alfred powerpack
echo "TODO: activate alfred powerpack"

# install vundle or whatever other vim bundler
vim +PluginInstall +qall
