export TERM="xterm-256color-italic"

export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/scripts:$PATH"

export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"
export XDG_CONFIG_HOME="$HOME/.config"
export ASDF_GOLANG_MOD_VERSION_ENABLED=true

ZSH_THEME="powerlevel10k/powerlevel10k"
COMPLETION_WAITING_DOTS="true"

plugins=(
  z
  gh
  aws
  fzf
  git
  asdf
  helm
  task
  yarn
  docker
  httpie
  poetry
  extract
  thefuck
  vi-mode
  docker-compose
  argocd-autopilot
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

# pnpm
export PNPM_HOME="/Users/vintrob/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# bun completions
[ -s "/Users/vintrob/.oh-my-zsh/completions/_bun" ] && source "/Users/vintrob/.oh-my-zsh/completions/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
