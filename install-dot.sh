# symbolic link
#

cd ~

# backup .bash_profile
if [ -f ~/.bash_profile ]; then
   mv ~/.bash_profile .dotfile/backup/.bash_profile
   ln -s .dotfiles/bash_profile .bash_profile
fi

# backup .bashrc
if [ -f ~/.bashrc ]; then
   mv ~/.bashrc .dotfile/backup/.bashrc
   ln -s .dotfiles/bashrc .bashrc
fi

# backup .gitconfig
if [ -f ~/.gitconfig ]; then
   mv ~/.gitconfig .gitconfig_bak
   ln -s .dotfiles/gitconfig .gitconfig
fi

# install homebrew
# https://github.com/mxcl/homebrew/wiki/installation
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"

# install vcprompt
# https://github.com/djl/vcprompt
curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/.dotfiles/bash/bin/vcprompt
chmod 755 ~/.dotfiles/bash/bin/vcprompt

# install git
# git-extra
# git-flow
# git-multipush
# 
# 
brew install git
brew install git-extra
brew install git-flow
brew install git-multipush

# install rvm (Ruby enViroment or Version Manager)
# https://github.com/wayneeseguin/rvm
bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )

# nvm (node version manager)
# https://github.com/creationix/nvm
git clone git://github.com/creationix/nvm.git ~/.nvm

# dotfile auto commit
#
git add -A
git commit -a -m 'installed dot files'

# git submodule update --init
# 
git submdoule update --init

# markdown to confluence
# need python
# https://github.com/dirkk0/Markdown-Converter
chmod +x ~/.dotfiles/scripts/markdown2confluence.sh
ln -s ~/.dotfiles/scripts/markdown2confluence.sh /usr/local/bin/md2conf

# dotjs 
# chrome extension
# https://github.com/defunkt/dotjs
ln -s ~/.dotfiles/chrome_dotjs/ ~/.js
