export PATH="$(brew --prefix)/opt/curl/bin:$PATH"
export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOME/scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/workspaces/harmony/cc-review/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"
export XDG_CONFIG_HOME="$HOME/.config"
export ASDF_GOLANG_MOD_VERSION_ENABLED=true

ZSH_THEME="powerlevel10k/powerlevel10k"
COMPLETION_WAITING_DOTS="true"

plugins=(
  z
  uv
  gh
  aws
  fzf
  git
  asdf
  helm
  yarn
  docker
  httpie
  poetry
  extract
  thefuck
  vi-mode
  docker-compose
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export PAGER='less'
export EDITOR='nvim'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# setup vi-mode for shell
bindkey -v
export KEYTIMEOUT=1

# edit command-line with vim usine <c-e>
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# hook direnv
eval "$(direnv hook zsh)"

# hook fzf
source <(fzf --zsh)

# setup fzf's shell integration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

compdef kubecolor=kubectl

# bun completions
[ -s "/Users/tvaintrob/.bun/_bun" ] && source "/Users/tvaintrob/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
