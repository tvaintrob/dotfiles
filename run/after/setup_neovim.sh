#!/bin/sh
set -o errexit -o nounset

if [ ! -d "$HOME/.config/nvim" ]; then 
    git clone https://github.com/tvaintrob/cosynvim-config.git $HOME/.config/nvim
fi
