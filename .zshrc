export GOPATH=$HOME/code/go
export PATH=$HOME/bin:/usr/local/bin:$GOPATH:$GOPATH/bin:$PATH
export ZSH=/Users/tvaintrob/.oh-my-zsh
export EDITOR='nvim'

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
PROJECT_HOME=~/code/.projects

plugins=( git gitignore npm pip brew sudo osx jsontools zsh-syntax-highlighting )

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
alias ssh="TERM=xterm ssh"
alias awssh='ssh -i "~/.keys/tvaintrob-dev-pair.pem"'

eval $(thefuck --alias)
source "/usr/local/bin/virtualenvwrapper.sh"
source "/usr/local/etc/profile.d/z.sh"

fpath=(/usr/local/share/zsh-completions $fpath)
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/Frameworks/flutter/bin:$PATH"
export HOMEBREW_AUTO_UPDATE_SECS=18000

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
