#!/bin/zsh

# Last updated: July 13, 2020

set +x
my_dir="$(dirname "$0")"
support_dir="$my_dir/../support"

# Load functions
source "$support_dir/functions.sh"

# Check and prompt for necessary dependencies
source "$support_dir/precheck.sh"

title 'SYM LINKS'
source "$support_dir/sym_links.sh"

title 'VIM & VUNDLE'
source "$support_dir/vim.sh"

title 'HOMEBREW'
source "$support_dir/brew.sh"

echo 'Only tested to this point'
exit

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
source "$support_dir/mac_settings.sh"

title 'MANUAL STEPS'
source "$support_dir/manual_steps.sh"

# @todo all the steps in my Bear doc "code"... how many can be done programatically
