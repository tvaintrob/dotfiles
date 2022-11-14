#!/bin/bash

DIR=$(dirname "$0")

function setup_linux() {
  brew install stow

  for package in $DIR/symlinks/*; do
    $(brew --prefix)/bin/stow --dir $DIR/symlinks --target $HOME --adopt $(basename "$package")
    git -C $DIR restore .
    $(brew --prefix)/bin/stow --dir $DIR/symlinks --target $HOME $(basename "$package")
  done
}

function setup_mac() {
  $DIR/zero/setup
}

if [ "$(uname)" == "Darwin" ]; then
  setup_mac
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  setup_linux
fi
