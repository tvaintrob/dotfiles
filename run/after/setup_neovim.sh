#!/bin/sh
set -o errexit -o nounset

if [ ! -d "$HOME/.config/nvim" ]; then 
    git clone https://github.com/tvaintrob/neovim.git $HOME/.config/nvim
fi
