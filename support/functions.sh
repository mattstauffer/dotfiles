#!/bin/zsh

# Functions

prompt_quit_if_no () {
    if read -q "choice?$1 (y/n)"; then
        echo ''
    else
        echo ''
        echo ''
        echo 'Quitting...'
        exit
    fi
}

title () {
    title=$1
    title_length=${#title}
    leftover=$(expr 30 - $title_length)

    echo ''
    printf "$title "
    printf '=%.0s' {1..$leftover}
    echo ''
    echo ''
}
