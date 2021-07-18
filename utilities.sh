#!/bin/bash

create_link () {
  if [ ! -e $2 ]; then
    ln -s $1 $2
    echo "$2 created as link to $1"
  else
    echo "$2 already exists"
  fi
}

replace_by_link () {
  if [ -e $2 ]; then
    rm -rf $2
    ln -s $1 $2
    echo "$2 replaced by link to $1"
  else
    echo "$2 not found"
  fi
}

add_line_to_file () {
  echo "" >> $1
  echo "# Automatic addition" >> $1
  echo $2 >> $1
  echo $2 added to $1
}

git_clone_repository () {
  if [ ! -e $2 ]; then
    git clone $1 $2
    echo $2 cloned
  else
    echo $2 already exists
  fi
}
