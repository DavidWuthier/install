#!/bin/bash

# Setup SSH key
if [ ! -e ~/.ssh/id_rsa ]; then
  ssh-keygen -t rsa -b 4096 -C "dwuthier@gmail.com"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa
  sudo apt install xclip -y
  xclip -sel clip < ~/.ssh/id_rsa.pub
  google-chrome https://github.com/settings/keys
else
  xclip -sel clip < ~/.ssh/id_rsa.pub
  echo "ssh key already exists - copied in the clipboard"
fi
