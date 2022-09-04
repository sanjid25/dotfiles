# oh-my-zsh default config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# use vim bindings in the shell
bindkey -v 
# use `jk` to exit out of insert mode
bindkey 'jk' vi-cmd-mode

# alias to manage dot files with git
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'

# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'

# Creates a new session
alias tn='tmux new-session'

# Lists all ongoing sessions
alias tl='tmux list-sessions'

