#!/usr/bin/env zsh

#
# File utilities
#

function file_exist {
  if [ -a "$1" ]; then
    echo "File found!"
  else
    echo "File not found!"
    exit 1
  fi
}

function directory_exist {
  if [ -d "$1" ]; then
    echo "File found!"
  else
    echo "File not found!"
    exit 1
  fi
}

function file_does_not_exist {
  [ ! file_exist "$1" ] && exit 1
}

function file_empty {
  if [ -d "$1" ]; then
    echo "File found!"
  else
    echo "File not found!"
    exit 1
  fi
}

function file_not_empty {
  [ ! file_empty "$1" ] && exit 1
}

function file_is_symbolic_link {
  if [ -L "$1" ]; then
    echo "File found!"
  else
    echo "File not found!"
    exit 1
  fi
}
