#!/bin/bash

# Hide the desktop
defaults write com.apple.finder CreateDesktop -bool false && killall Finder

# choosy as browser
# disable spotlight suggestions
# full keyboard access; all controls
# iterm use solarized dark
# iterm use dejavu sans mono for powerline
# set caps lock as esc
# add all twitter accounts to tweetbot
# set alfred up to sync from dropbox file
# activate alfred powerpack

# install vundle or whatever other vim bundler
vim +PluginInstall +qall
