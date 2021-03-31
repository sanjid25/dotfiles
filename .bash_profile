man(){ $1 --help; }

# VIM Binding in the shell  
set -o vi  
# Remap 'jk' to escape key, i.e. normal mode
bind '"jk":"\e"'

alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no

