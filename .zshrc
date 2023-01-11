# oh-my-zsh default config
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="strug"
# 2 other good themes [rgm, refined]

# oh-my-zsh plugings
plugins=(
  git
  zsh-aws-vault
)
source $ZSH/oh-my-zsh.sh

# VIM BINDING 
bindkey -v 
bindkey 'jk' vi-cmd-mode # use `jk` to exit out of insert mode

# enable reverse-i-search
# which gets disabled with zsh
bindkey '^r' history-incremental-search-backward

# alias to manage dot files with git
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# TMUX
# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'
# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'
# Creates a new session
alias tn='tmux new-session'
# Lists all ongoing sessions
alias tl='tmux list-sessions'

# SOURCING CONFIG FILES
alias source-tmux='tmux source-file ~/.tmux.conf'
alias source-zsh='source ~/.zshrc'


# PERSONAL 
alias set_web='cd ~/projects/sanjidnet.github.io'
alias set_local='cd /mnt/c/Users/SanjidRahman/projects/'

