CASK_APPS=(
    "notion"
    "spotify"
    "encryptme"
    "tableplus"
    "PHPStorm" # Is this not gonna bonk because I should have jetbrains toolbox instead?
    "google-chrome"
    "firefox"
    "alfred"
    "screenflow"
    "audio-hijack"
    "bartender"
    "Imageoptim"
    "backblaze"
    "slack"
    "zoomus"
    "sketch"
    "quicken"
    "telegram"
    "sublime-text"
    "airfoil"
    "loopback"
    "audio-hijack"
    "macvim"
    "mailplane"
    "github"
    "tinkerwell"
    "discord"
    "dash"
    "steam"
    "muzzle"
    "docker"
    "fluid"
    "iterm2"
    "karabiner-elements"
    "keybase"
    "mailmate"
    "nvalt"
    "obs"
    "postgres"
    "rocket"
    "signal"
    "skype"
    "soundsource"
    "choosy"
    "hazel"
)

# Spent all this time writing this and you can't even do it this way???
# string=${(j: :)CASK_APPS}
# brew cask install $string

# This sucks and will motivate me to move to Brewfile even faster
for app in $CASK_APPS; do
    # @todo
    echo "brew cask install $app"
done
