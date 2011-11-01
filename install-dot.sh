# symbolic link
#
cd ~
ln -s .dotfiles/bash_profile .bash_profile
ln -s .dotfiles/bashrc .bashrc

if [ -f ~/.gitconfig ]; then
#   mv ~/.gitconfig .gitconfig_bak
   ln -s .dotfiles/gitconfig .gitconfig
fi

# brew
# https://github.com/mxcl/homebrew/wiki/installation
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"


# install git
# 
brew install git

# install rvm (Ruby enViroment or Version Manager)
# https://github.com/wayneeseguin/rvm
bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )

# nvm (node version manager)
# https://github.com/creationix/nvm
git clone git://github.com/creationix/nvm.git ~/.nvm

