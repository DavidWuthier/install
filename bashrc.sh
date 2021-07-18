#!/bin/bash

source ./utilities.sh

cp /etc/skel/.bashrc ~/.bashrc
add_line_to_file ~/.bashrc "export VIMINIT='source $HOME/install/vim/vimrc'"
add_line_to_file ~/.bashrc "source $HOME/install/bash/.bash_custom"
