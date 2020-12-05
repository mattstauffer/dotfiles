#!/bin/zsh

# Last updated Brew/app list: October 3, 2020

set +x
#my_dir="$(dirname "$0")"
my_dir="$HOME/dotfiles/bin"
support_dir="$my_dir/../support"

cd $my_dir

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
source "$support_dir/brew.sh"

title 'GIT'
git config --global user.name "Matt Stauffer"
git config --global user.email "matt@tighten.co"
git config --global core.excludesfile ~/.gitignore
echo 'XX -- Git done.'

title 'OHMYZSH'
source "$support_dir/ohmyzsh.sh" && cd $my_dir

title 'COMPOSER'
source "$support_dir/composer.sh" && cd $my_dir

title 'VALET'
source "$support_dir/valet.sh" && cd $my_dir

title 'NPM'
if [ ! -d "$HOME/.nvm" ]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
    export NVM_DIR=$HOME/.nvm;
    source $NVM_DIR/nvm.sh;
    nvm install 14
fi
# @todo all global npm deps

echo 'XX -- NPM done.'

title 'MACOS SETTINGS'
source "$support_dir/mac_settings.sh"

title 'MANUAL STEPS'
source "$support_dir/manual_steps.sh"

# @todo all the steps in my Bear doc "code"... how many can be done programatically
