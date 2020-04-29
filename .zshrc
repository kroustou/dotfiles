echo "Initializing..."
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

alias tmux='tmux -u -2'
alias vim='nvim'
export VISUAL=vim
export EDITOR="$VISUAL"
set -o vi
set PATH=$PATH:/opt/rh/rh-nodejs10/root/usr/bin/
bindkey -M viins 'jk' vi-cmd-mode
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.env
if type exa; then
   alias ls=exa
   echo "ls -> exa"
fi
echo "Done"
