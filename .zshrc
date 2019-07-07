export GOPATH=$HOME/code/epsagon/go
export PATH=$HOME/bin:/usr/local/bin:$GOPATH:$GOPATH/bin:$PATH
export PATH="/usr/local/opt/python36/bin:$PATH"
export ZSH=/Users/tvaintrob/.oh-my-zsh
export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'
export EDITOR='nvim'
export PYTHONPATH=/Users/tvaintrob/code/epsagon/epsagon-backend:/Users/tvaintrob/code/epsagon/epsagon-backend/events_search:/Users/tvaintrob/code/epsagon/epsagon-backend/architecture:/Users/tvaintrob/code/epsagon/epsagon-backend/aws_roles:/Users/tvaintrob/code/epsagon/epsagon-backend/functions_service:/Users/tvaintrob/code/epsagon/epsagon-backend/account_service:/Users/tvaintrob/code/epsagon/epsagon-backend/notification_service:/Users/tvaintrob/code/epsagon/epsagon-backend/user_management:/Users/tvaintrob/code/epsagon/epsagon-backend/transaction_writing:$PYTHONPATH

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
PROJECT_HOME=~/code/epsagon/.projects

plugins=( git gitignore npm pip brew sudo osx jsontools zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh



# User configuration

alias ctags='/usr/local/bin/ctags'
alias vim='nvim'
alias vi='nvim'
alias sv='vim -u ~/.SpaceVim/vimrc'
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

            [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
