#!/bin/bash

# I've done many of these over the years, but the latest incarnation is inspired
# by Ian Landsman reminding me you can use Homebrew to install Mac App Store apps

# Last updated: July 13, 2020

echo 'Install Homebrew'
echo '----------------'

CASK_SCRIPTS=(
    "notion"
    "spotify"
    "encryptme"
    "tableplus"
    "PHPStorm" # Is this not gonna bonk because I should have the php storm installer doohickey?
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

    # @todo all other audio software: airfoil
    # @todo adobe creative suite: acrobat, audition, photoshop
    # @todo cloud app
    # @todo vs code
    # @todo macvim
    # @todo audit all other apps
    # @todo mailplane
    # @todo hey
    # @todo busycal
    # @todo github desktop
    # @todo tinkerwell
    # @todo discord
    # @todo bear
    # @todo discoveries
    # @todo trello
    # @todo things
    # @todo dash
    # @todo steam
    # @todo deckset
)

echo 'Install brew-cask'
echo '-----------------'
brew tap caskroom/cask
brew install brew-cask

echo 'Install brew-mas'
echo '----------------'
brew install mas

echo 'Installing Cask apps'
echo '--------------------'

MAC_APP_MAP=(
    ["amphetamine"]="123123"
    ["breaktime"]="123123"
    ["daisydisk"]="123123"
    ["day one"]="1055511498"
    ["1password"]="1333432190"
    # @todo 
)

echo 'Installing Mac App Store Software'
echo '---------------------------------'
# @todo amphetamine
# @todo breaktime
# @todo daisydisk
# @todo day one
# @todo 1password

echo 'Installing normal Homebrew dependencies'
echo '---------------------------------------'
