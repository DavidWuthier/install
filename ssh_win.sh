#!/bin/bash

# Setup SSH key
if [ ! -e ~/.ssh/id_rsa ]; then
  ssh-keygen -t rsa -b 4096 -C "dwuthier@gmail.com"
  eval $(ssh-agent -s)
  ssh-add ~/.ssh/id_rsa
  clip < ~/.ssh/id_rsa.pub
  /c/Program\ Files/Google/Chrome/Application/chrome.exe https://github.com/settings/keys
else
  echo "ssh key already exists"
fi
