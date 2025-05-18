#!/bin/bash

set -o errexit -o nounset

if ! asdf plugin list | grep -w -q golang; then
    asdf plugin add golang
    asdf install golang latest
    asdf set -u golang latest
fi

if ! asdf plugin list | grep -w -q nodejs; then
    asdf plugin add nodejs
    asdf install nodejs lts
    asdf set -u nodejs lts
fi
