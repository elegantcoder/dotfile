source ~/.dotfiles/bash/aliases
source ~/.dotfiles/bash/completions
source ~/.dotfiles/bash/paths
source ~/.dotfiles/bash/config
source ~/.dotfiles/bash/gist

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
     source ~/.localrc
fi
