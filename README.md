# Dotfiles

personal configuration and dotfiles

## Installation
installation is done using [zero.sh](https://github.com/zero-sh/zero.sh).

### Steps
the following steps will happend when you install:

1. download and install macos updates
2. download and install appstore updates
3. install brew packages listed at [Brewfile](./Brewfile) (review them before running)
4. run the scripts located at [run/before](./run/before)
5. apply macos defaults lister at [defaults.yaml](./defaults.yaml) (review them before running)
6. symlink all dotfiles from the [symlinks](./symlinks/) directory
7. run the scripts located at [run/after](./run/after)

to install run the following:
```bash
git clone --recursive https://github.com/tvaintrob/dotfiles ~/.dotfiles
caffeinate ~/.dotfiles/zero/setup
```
