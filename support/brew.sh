echo 'Installing Homebrew'
echo '-------------------'
# @todo should this be "source" or something different since it's inside a script?
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# @todo dupes?

echo 'Installing brew-cask'
echo '--------------------'
brew tap caskroom/cask
brew install brew-cask

echo 'Installing brew-mas'
echo '-------------------'
brew install mas

# Why not Brewfile?
# I'm hoping to build tooling to automatically update this list
# with whatever is currently installed on my computer; moving
# the lists into separate files will help with that.

echo 'Installing Cask apps'
echo '--------------------'

source ./cask_apps.sh

# @todo iterate over the array and install them all

echo 'Installing Mac App Store Software'
echo '---------------------------------'

source ./mas_apps.sh

# @todo iterate over the array and install them all

echo 'Installing normal Homebrew dependencies'
echo '---------------------------------------'

source ./brew_apps.sh

# @todo iterate over the array and install them all
