#!/bin/bash

source ./utilities.sh

gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
gsettings set org.gnome.desktop.peripherals.keyboard delay 200
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:swapescape']"

