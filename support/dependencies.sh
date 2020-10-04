#!/bin/zsh

PWD=$(pwd)

declare -A GIT_DEPENDENCIES 
GIT_DEPENDENCIES=(
    ["$HOME/.hammerspoon"]="git@github.com:tighten/automation-scripts.git"
)

for dir repo in ${(kv)GIT_DEPENDENCIES}; do
    mkdir -p $dir
    cd $dir
    git clone $repo > /dev/null 2>&1
    CLONE_SUCCESS=$?

    if [[ $CLONE_SUCCESS == 0 ]]
    then
        echo "Clone successful - ($repo)"
    fi

    if [[ $CLONE_SUCCESS == 128 ]]
    then
        echo "Clone fail - $repo (sorry, can't handle that case right now)"
        # If folder already exists, CD in and pull the latest?
        # @todo figure out the folder by parsing the repo :grimace:
        # @todo cd into that folder and git pull
    fi

done

cd $PWD
