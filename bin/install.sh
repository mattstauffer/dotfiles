#!/bin/zsh

# Last updated: July 13, 2020

my_dir="$(dirname "$0")"
pretend=true

# Load functions
source "$my_dir/../support/functions.sh"

# Check and prompt for necessary dependencies
source "$my_dir/../support/precheck.sh"


echo 'SYM LINKS ==============='
echo ''

source "$my_dir/../support/sym_links.sh"

echo "Only tested to this point"

exit

echo 'HOMEBREW ================'
echo ''
source ../support/brew.sh

echo "GIT ====================='
echo ''

# @todo stuff with setting your name and email in git config --global --edit

echo 'OHMYZSH ================='
echo ''
# @todo brew install zsh zsh-completions
# @todo chsh -s /usr/local/bin/zsh
# @todo Oh my zsh

echo 'COMPOSER ================'
echo ''
# @todo composer
# @todo all composer global deps

echo 'VALET ==================='
echo ''
#@todo valet install ... assumning Composer global script already installed it?

echo 'NPM ====================='
echo ''
# @todo nvm and npm and node
# @todo all global npm deps

echo 'RVM ====================='
echo ''
# @todo rvm?
# \curl -sSL https://get.rvm.io | bash -s stable
# Rvm install 2.5.1
#m Rvm use 2.5.1

echo 'MACOS SETTINGS =========='
echo ''
# @todo mac settings
# choosy as browser
# turn on filevault
# disable spotlight suggestions
# full keyboard access; all controls
# iterm uyse solarized dark
# iterm yuse dejavu sans mono for powerline
# set caps lock as esc
# Add all cals to busycal
# let busycal take over alarms
# add all twitter accounts to tweetbot
# install powerline fonts??
# install vundle or whatever other vim bundler
# set alfred up to sync from dropbox file

#


# @todo all the steps in my Bear doc "code"... how many can be done programatically
