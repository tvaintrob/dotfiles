#!/bin/bash

set -o errexit -o nounset

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

tic -x "$SCRIPT_DIR/../../terminal/terminfo/xterm-256color-italic.terminfo"
tic -x "$SCRIPT_DIR/../../terminal/terminfo/tmux-256color.terminfo"
