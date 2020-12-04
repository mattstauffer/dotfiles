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
arch -x86_64 brew install mas

echo ''
echo 'Installing Cask apps'
echo '--------------------'
source "$support_dir/cask_apps.sh"

echo ''
echo 'Installing Mac App Store Software'
echo '---------------------------------'
source "$support_dir/mas_apps.sh"

echo ''
echo 'Installing normal Homebrew dependencies'
echo '---------------------------------------'
cd $support_dir
arch -x86_64 brew bundle

# @todo Once I run this once, try dumping to a Brewfile to see if it actually dumps
# MAS and Cask correctly; if so, potentially replace all/most of this with just Brewfile

echo 'XX -- Homebrew done.'
