export GOPATH=$HOME/code/go
export PATH=$HOME/bin:/usr/local/bin:$GOPATH:$PATH
export ZSH=/Users/tvaintrob/.oh-my-zsh
export EDITOR='nvim'

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"

plugins=( git gitignore npm zsh-better-npm-completions pip brew sudo osx jsontools zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

# User configuration

alias vim='nvim'
alias vi='nvim'
alias zshrc='$EDITOR ~/.zshrc'
alias cls='clear'
alias sorc='source ~/.zshrc'
alias :q='exit'
alias vimrc="vim ~/.config/nvim/init.vim"
alias l='gls -lah --group-directories-first --color=always'
alias la='gls -lAh --group-directories-first --color=always'
alias ll='gls -lh --group-directories-first --color=always'
alias ls='gls -G --group-directories-first --color=always'
alias lsa='gls -lah --group-directories-first --color=always'

eval $(thefuck --alias)
source "/usr/local/bin/virtualenvwrapper.sh"
