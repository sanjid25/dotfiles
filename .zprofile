
eval "$(/opt/homebrew/bin/brew shellenv)"

# added by Snowflake SnowSQL installer v1.2
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

# SOURCES
if [ -f $HOME/snow.env ]; then
  echo 'Snow Env Found'
  source $HOME/snow.env
fi

# ALIASES
alias python='python3'
alias vim='nvim'

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
