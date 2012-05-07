source ~/.dotfiles/bash/aliases
source ~/.dotfiles/bash/completions
source ~/.dotfiles/bash/paths
source ~/.dotfiles/bash/config
source ~/.dotfiles/bash/gist

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
    source ~/.localrc
fi

# use .perlbrew for setting specific to on system
if [ -f $HOME/perl5 ]; then
    source /Users/rhio/perl5/perlbrew/etc/bashrc
fi

# Load RVM into a shell session *as a function*
[[ -s "/Users/rhio/.rvm/scripts/rvm" ]] && source "/Users/rhio/.rvm/scripts/rvm" 
