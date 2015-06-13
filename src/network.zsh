#!/usr/bin/env zsh

#
# Ports
#
port_open() {

}

port_closed() {
  ! port_open
}

port_being_used_by() {
  # $1 port in use
  # $2 name of process that should be using the port || pid
}
