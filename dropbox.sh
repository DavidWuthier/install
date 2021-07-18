#!/bin/bash

if [ ! -e ~/Dropbox ]; then
  cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
  ~/.dropbox-dist/dropboxd
else
  echo "Dropbox already installed"
fi
