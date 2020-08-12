#!/bin/zsh

GIT_DEPENDENCIES=(
    # @todo: Hammerspoon can't handle symlinks so this doesn't work.
    # Maybe I'll allow for defining where to clone these *into* so we
    # can clone this one into ~/.hammerspoon ?
    # "git@github.com:tightenco/automation-scripts.git"
)

cd $dependencies_dir
for repo in $GIT_DEPENDENCIES; do
    # @todo if cloned, pull
    git clone $repo
done
cd -
