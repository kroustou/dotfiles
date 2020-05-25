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

set -o vi
bindkey -M viins 'jk' vi-cmd-mode
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.env
if type exa; then
   alias ls=exa
   echo "ls -> exa"
fi

export TERM=xterm-256color
echo "Done"
