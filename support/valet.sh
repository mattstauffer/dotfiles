#!/bin/bash

valet install
valet trust
mkdir -p $HOME/Sites
cd $HOME/Sites
valet park

echo 'XX -- Valet done.'
