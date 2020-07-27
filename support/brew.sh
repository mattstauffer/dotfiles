echo 'Installing Homebrew'
echo '-------------------'

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo 'Installing brew-cask'
echo '--------------------'
brew tap caskroom/cask
brew install brew-cask

echo 'Installing brew-mas'
echo '-------------------'
brew install mas

# @todo: Can I move *all* of these into Brewfile? Not sure if bundle dump dumps MAS, too

echo 'Installing Cask apps'
echo '--------------------'
source ./cask_apps.sh

echo 'Installing Mac App Store Software'
echo '---------------------------------'
source ./mas_apps.sh

echo 'Installing normal Homebrew dependencies'
echo '---------------------------------------'
source ./brew_apps.sh

# @todo start brew services
