#!/bin/bash

# Functions

prompt_quit_if_no () {
    echo -n "$1 (y/n) "
    read answer
    if [ "$answer" == "${answer#[Yy]}" ] ;then
        echo ''
        echo 'Quitting...'
        echo ''
        exit
    fi
    echo ''
}

