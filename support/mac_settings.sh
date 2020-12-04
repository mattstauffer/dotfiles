#!/bin/bash

# Hide the desktop
defaults write com.apple.finder CreateDesktop -bool false && killall Finder

# choosy as browser
# turn on filevault
# disable spotlight suggestions
# full keyboard access; all controls
# iterm use solarized dark
# iterm use dejavu sans mono for powerline
# set caps lock as esc
# add all twitter accounts to tweetbot
# install vundle or whatever other vim bundler
vim +PluginInstall +qall
# set alfred up to sync from dropbox file
#
