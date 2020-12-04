#!/bin/bash

# @todo: Can't force it to use arm. Maybe prefix this with arm?
valet install
valet trust
mkdir -p $HOME/Sites
cd $HOME/Sites
valet park

echo 'XX -- Valet done.'
