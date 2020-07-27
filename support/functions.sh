#!/bin/zsh

# Functions

prompt_quit_if_no () {
    if read -q "choice?$1 (y/n)"; then
        echo ''
    else
        echo "\nQuitting...\n"
        exit
    fi
}
