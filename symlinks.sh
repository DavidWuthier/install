#!/bin/bash

source ./utilities.sh

# Setup some symlinks to Dropbox
create_link ~/db/terminator ~/.config/terminator
create_link ~/Dropbox ~/db
create_link ~/db/git/.gitconfig ~/.gitconfig
create_link ~/Desktop ~/dkp
create_link ~/Documents ~/doc
create_link ~/db/fonts ~/.fonts
create_link ~/db/bash/.bash_aliases ~/.bash_aliases

