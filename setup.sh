#!/bin/bash

DIR=$(dirname "$0")

function setup_linux() {
  brew install zero-sh/tap/zero
  $(brew --prefix)/bin/zero apply-symlinks
}

function setup_mac() {
  $DIR/zero/setup
}

if [ "$(uname)" == "Darwin" ]; then
  setup_mac
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  setup_linux
fi
