#!/bin/bash

function backup() {
    if [ -e "${1}" ]; then
	echo "Backing up ${1}";
        mv ${1} ${1}.backup
    fi
}

# Back up old dotfiles
backup ~/.bashrc
backup ~/.vimrc
backup ~/.gvimrc
backup ~/.bash_aliases

dir=`pwd`

# Link to new dotfiles in this repo
ln -s ${dir}/bashrc ~/.bashrc
ln -s ${dir}/bash_aliases ~/.bash_aliases
ln -s ${dir}/vimrc ~/.vimrc
ln -s ${dir}/gvimrc ~/.gvimrc

# Initialize pathogen
backup ~/.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
