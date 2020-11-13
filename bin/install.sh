#!/bin/zsh

# Last updated: October 3, 2020

set +x
#my_dir="$(dirname "$0")"
my_dir="$HOME/dotfiles/bin"
support_dir="$my_dir/../support"

# Load functions
source "$support_dir/functions.sh"

# Check and prompt for necessary dependencies
source "$support_dir/precheck.sh" && cd $my_dir

title 'DEPENDENCIES'
source "$support_dir/dependencies.sh" && cd $my_dir
#@todo install hub

title 'SYM LINKS'
source "$support_dir/sym_links.sh" && cd $my_dir

title 'HOMEBREW'
#source "$support_dir/brew.sh"

title 'GIT'
git config --global user.name "Matt Stauffer"
git config --global user.email "matt@tighten.co"
git config --global core.excludesfile ~/.gitignore

title 'OHMYZSH'
if [ $SHELL != '/bin/zsh' ]; then
    chsh -s /usr/local/bin/zsh
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    mv $HOME/.zshrc.pre-oh-my-zsh $HOME/.zshrc
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
fi

title 'COMPOSER'
brew install composer
composer global require laravel/valet laravel/installer tightenco/lambo tightenco/takeout

title 'VALET'
valet trust
valet install
mkdir -p $HOME/Sites
cd $HOME/Sites
valet park
cd $my_dir

echo "done post valet"
exit
title 'NPM'
# @todo nvm and npm and node
# @todo all global npm deps

title 'RVM'
# @todo rvm?
# \curl -sSL https://get.rvm.io | bash -s stable
# Rvm install 2.5.1
#m Rvm use 2.5.1

title 'MACOS SETTINGS'
source "$support_dir/mac_settings.sh"

title 'MANUAL STEPS'
source "$support_dir/manual_steps.sh"

# @todo all the steps in my Bear doc "code"... how many can be done programatically
