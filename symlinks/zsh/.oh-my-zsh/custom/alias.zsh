unalias ls
alias ls='ls --group-directories-first --color=always'

alias vim='nvim'
alias vimrc='vim --cmd "cd ~/.config/nvim" ~/.config/nvim/init.lua'

alias lg="lazygit"
alias lz="lazygit"
alias ld="lazydocker"

alias kubectl="kubecolor"
alias kc="kubectl"
alias svc="kubectl get svc"
alias pods="kubectl get pods"

alias gcoo='git checkout `git branch --format="%(refname:short)" | fzf --preview="git log {} --color=always"`'

alias ssh='TERM=xterm-256color ssh'
alias nx='yarn nx'
alias tf='terraform'
alias notes='notes-cli'
alias n='notes-cli'
alias t="task"

alias gpc="gh pr create"
alias gpv="gh pr view --web"
