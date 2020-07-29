#!/bin/zsh

# Last updated: July 13, 2020

my_dir="$(dirname "$0")"

# Load functions
source "$my_dir/../support/functions.sh"

# Check and prompt for necessary dependencies
source "$my_dir/../support/precheck.sh"

title 'SYM LINKS'

source "$my_dir/../support/sym_links.sh"

title 'VIM & VUNDLE'

mkdir -p ~/.vim/bundle

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo 'Only tested to this point'
exit

title 'HOMEBREW'
source ../support/brew.sh

title 'GIT'
git config --global --edit
git config --global core.excludesfile ~/.gitignore

title 'OHMYZSH'
# Should already be installed but what the hell
brew install zsh zsh-completions
chsh -s /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

title 'COMPOSER'
brew install composer
# @todo all composer global deps: Valet, Laravel Installer, Lambo, ?

title 'VALET'
valet install
mkdir ~/Sites
# @todo park ~/Sites?

title 'NPM'
# @todo nvm and npm and node
# @todo all global npm deps

title 'RVM'
# @todo rvm?
# \curl -sSL https://get.rvm.io | bash -s stable
# Rvm install 2.5.1
#m Rvm use 2.5.1

title 'MACOS SETTINGS'
source "$my_dir/../support/mac_settings.sh"

# @todo all the steps in my Bear doc "code"... how many can be done programatically
