echo 'Installing Homebrew'
echo '-------------------'

if (! command -v brew &> /dev/null); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo 'Installed.'
else
    echo 'Already installed; skipping.'
fi

echo ''
echo 'Installing brew-mas'
echo '-------------------'
brew install mas

echo ''
echo 'Installing Cask apps'
echo '--------------------'
source "$support_dir/cask_apps.sh"

echo ''
echo 'Installing Mac App Store Software'
echo '---------------------------------'
source "$support_dir/mas_apps.sh"

echo 'installed mas and cask, quitting'
exit

echo ''
echo 'Installing normal Homebrew dependencies'
echo '---------------------------------------'
cd $support_dir
brew bundle

# @todo Once I run this once, try dumping to a Brewfile to see if it actually dumps
# MAS and Cask correctly; if so, potentially replace all/most of this with just Brewfile
