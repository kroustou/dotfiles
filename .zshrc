export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

alias tmux='tmux -u'
alias vim='nvim'
set -o vi
bindkey -M viins 'jk' vi-cmd-mode
export TERM=xterm-256color
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
