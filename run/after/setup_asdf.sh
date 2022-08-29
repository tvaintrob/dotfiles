#!/bin/bash

set -o errexit -o nounset

if ! asdf plugin list | grep -w -q golang; then
	asdf plugin add golang
	asdf install golang latest
	asdf global golang latest
fi

if ! asdf plugin list | grep -w -q nodejs; then
	asdf plugin add nodejs
	asdf install nodejs lts
	asdf global nodejs lts
fi

if ! asdf plugin list | grep -w -q python; then
	asdf plugin add python
	asdf install python latest
	asdf global python latest
fi

if ! asdf plugin list | grep -w -q rust; then
	asdf plugin add rust
	asdf install rust latest
	asdf global rust latest
fi
