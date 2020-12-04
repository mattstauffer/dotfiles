# Dotfiles 2.0

Making it myself instead of forking an existing repo.

## Steps to use it

1. [Install Dropbox](https://www.dropbox.com/install)
1. Allow the computer to install Rosetta, if you're on a M1 mac
1. Give Dropbox permissions via accessibility, and allow it to send notifications
1. Sign into Dropbox
1. Allow it to sync ten jillion files
1. Open the App store and sign in
1. If on M1 mac, copy the Terminal app, name it "ARM Terminal", edit its info, and check "Open using Rosetta"
1. Open Terminal (or ARM terminal)
1. `mkdir ~/.ssh && cd ~/.ssh`
1. Copy `id_rsa` and `id_rsa.pub` from another machine, or create a new SSH key and add it to GitHub & Forge etc. If copying from another computer, `chmod 600 ~/.ssh/id_rsa; chmod 600 ~/.ssh/id_rsa.pub`
1. [Create a GitHub personal access token for logging in from the command line.](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token). Give it just full `repo` access. Save that token in a text file or something.
1. Type `git`, hit enter, and follow the prompts to install the command line developer tools
1. Type `git clone https://github.com/mattstauffer/dotfiles.git dotfiles`, hit enter
1. Type `cd dotfiles`, hit enter
1. Type `./bin/install.sh`, hit enter
1. TODO flesh this out


## Inspirations/conversations

- Ian Landsman
- Andrew Morgan
- Jose Soto

# TODO
- Add hammerspoon the app, and also figure out how to symlink some elements from ~/.hammerspoon directory in if possible (remember, the lua watcher doesn't catch changes to symlinked files)
- Add karabiner elements
- Add Goku and start Goku config, and symlink Goku config
