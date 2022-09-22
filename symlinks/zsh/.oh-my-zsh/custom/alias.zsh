unalias ls
alias ls='ls --group-directories-first --color=always'

alias vim='nvim'
alias vimrc='vim ~/.config/nvim/init.lua'

alias lg="lazygit"
alias lz="lazygit"
alias ld="lazydocker"

alias kc="kubectl"
alias svc="kubectl get svc"
alias pods="kubectl get pods"

alias gcoo='git checkout `git branch --format="%(refname:short)" | fzf --preview="git log {} --color=always"`'

alias ssh='TERM=xterm-256color ssh'
