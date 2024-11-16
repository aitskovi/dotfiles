#!/bin/bash

function backup() {
    if [ -e "${1}" ]; then
	echo "Backing up ${1}";
        mv ${1} ${1}.backup.$$
    fi
}

# Back up old dotfiles
backup ~/.bashrc
backup ~/.vimrc
backup ~/.bash_aliases

dir=`pwd`

# Link to new dotfiles in this repo
ln -s ${dir}/bashrc ~/.bashrc
ln -s ${dir}/bash_aliases ~/.bash_aliases
ln -s ${dir}/vimrc ~/.vimrc

# Install homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ************
#  Set-up vim
# ************

# 1. Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 2. Create backup folder
mkdir ~/.vim/.backup/

# *****************
#  Set-up Terminal
# *****************

# 1. Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 2. Install utils
brew install z
brew install rbenv
brew install pyenv
brew install ag
brew install tmux
brew install reattach-to-user-namespace
brew install fzf

# 3. Install applications
brew tap caskroom/cask
brew cask install google-chrome
brew cask install spectacle
brew cask install iterm2

# Set screenshots to write to Google Drive
defaults write com.apple.screencapture location ~/Google\ Drive/Screenshots/
killall SystemUIServer
