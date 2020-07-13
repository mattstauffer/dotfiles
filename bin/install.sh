#!/bin/bash

# Last updated: July 13, 2020

echo 'Install Homebrew'
echo '----------------'

CASK_SCRIPTS=(
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

    # @todo all other audio software: airfoil
    # @todo adobe creative suite: acrobat, audition, photoshop
    # @todo cloud app
    # @todo vs code
    # @todo macvim
    # @todo audit all other apps
    # @todo mailplane
    # @todo hey
    # @todo github desktop
    # @todo tinkerwell
    # @todo discord
    # @todo things
    # @todo dash
    # @todo steam
    # @todo muzzle
    # @todo docker
    # @todo dropbox?
    # @todo ecamm movie tools
    # @todo elgato control center
    # @todo fluid
    # @todo frank deloupe
    # @todo gif brewery 3
    # @todo iterm2
    # @todo izotope rx 7 (or the product portal?)
    # @todo karabiner elements
    # @todo keybase
    # @todo mailmate
    # @todo notational velocity
    # @todo OBS
    # @todo paw
    # @todo postgres
    # @todo restream chat
    # @todo Rocket
    # @todo signal?
    # @todo Skype
    # @todo soundsource
    # @todo stream deck
    # @todo loopback
)

echo 'Install brew-cask'
echo '-----------------'
brew tap caskroom/cask
brew install brew-cask

echo 'Installing Cask apps'
echo '--------------------'

echo 'Install brew-mas'
echo '----------------'
brew install mas

MAC_APP_MAP=(
    ["amphetamine"]="123123"
    ["breaktime"]="123123"
    ["daisydisk"]="123123"
    ["day one"]="1055511498"
    ["1password"]="1333432190"
    # @todo Kindle
    # @todo MindNode
    # @todo Harvest

)

echo 'Installing Mac App Store Software'
echo '---------------------------------'
# @todo StuffIt Expander
# @todo Transmit
# @todo BusyCal
# @todo Tweetbot
# @todo GIPHY Capture
# @todo Trello
# @todo Things
# @todo Bear
# @todo Screenflow
# @todo Deliveries
# @todo Deckset
# @todo Soulver
# @todo Marked
# @todo Divvy
# @todo Kindle
# @todo The Unarchiver
# @todo CloudApp


echo 'Installing normal Homebrew dependencies'
echo '---------------------------------------'
