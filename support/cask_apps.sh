CASK_APPS=(
    "1password"
    "notion"
    "colorsnapper"
    "deckset"
    "visual-studio-code"
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
    "keybase"
    "mailmate"
    "nvalt"
    "obs"
    "postgres"
    "rocket"
    "signal"
    "skype"
    "soundsource"
    "hazel"
    "zoom"
    "karabiner-elements"
    "choosy"
)

# Spent all this time writing this and you can't even do it this way???
# string=${(j: :)CASK_APPS}
# brew install --cask $string

# Move to brewfile soon
for app in "${CASK_APPS[@]}"; do
    echo " - Installing $app..."
    brew install --cask $app
done
