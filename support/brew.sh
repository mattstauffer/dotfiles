echo 'Installing Homebrew'
echo '-------------------'

if (! command -v brew &> /dev/null); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo 'Installed.'
else
    echo 'Already installed; skipping.'
fi

echo ''
echo 'Installing Homebrew dependencies'
echo '--------------------------------'
cd $support_dir
arch -arm64 brew bundle

echo 'XX -- Homebrew done.'
