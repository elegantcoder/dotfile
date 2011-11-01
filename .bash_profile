# node.js install option for path
export PATH=$HOME/local/node/bin:$PATH

# Ruby Version manager
export rvm_project_rvmrc=0
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# node.js NODE_PATH enviromenet variables
export NODE_PATH=$HOME/node_modules

# MacPorts Installer addition on 2011-08-03_at_12:33:22: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

