#!/bin/bash

set -o errexit -o nounset

asdf plugin add golang
asdf install golang latest
asdf global golang latest

asdf plugin add nodejs
asdf install nodejs lts
asdf global nodejs lts

asdf plugin add python
asdf install python latest
asdf global python latest

asdf plugin add rust
asdf install rust latest
asdf global rust latest
