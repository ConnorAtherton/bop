#!/usr/bin/env zsh

#
# Processes
#
process_running() {
  # $1 name of process || pid number
}

process_not_running() {
  # $1 name of process || pid number
  ! process_running
}

