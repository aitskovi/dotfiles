# Back up old dotfiles
mv ~/.bashrc ~/.bashrc.backup
mv ~/.vimrc.local ~/.vimrc.local.backup
mv ~/.gvimrc.local ~/.gvimrc.local.backup

dir=`pwd`

# Link to new dotfiles in this repo
ln -s ${dir}/bashrc ~/.bashrc
ln -s ${dir}/vimrc.local ~/.vimrc.local
ln -s ${dir}/gvimrc.local ~/.gvimrc.local
