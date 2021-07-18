#!/bin/bash

source ./utilities.sh

sudo apt install exuberant-ctags
mkdir -p ~/.vim/colors
replace_by_link ~/install/vim/colors ~/.vim/colors
git_clone_repository https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
python3 ~/.vim/bundle/YouCompleteMe/install.py --clangd-completer
