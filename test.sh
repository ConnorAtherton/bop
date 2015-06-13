#!/usr/bin/env zsh

# Features
# - should capture exit codes and perform the full tests
# - should be able to pass flags (--fail-fast, --no-color)
# - should be able to indent for expresiveness
#
# Example
#
# suite "This is a test"
#   describe "Test 1"
#     echo "This is a test"
#   describe
#
#   describe "Test 2"
#     echo "This is a test too"
#   describe
# suite
#

#
# Test structure
#
suite() {
  # is string given its the start of a block
  # otherwise it's the end
}

block() {
  # is string given its the start of a block
  # otherwise it's the end
}


#
# Full reporter
#
print() {
  # $1 is either "fail", "pass" or "warn"

  # echo $string
}

#
# Dot reporter
#
print() {
  # prints colored dots on screen instead of message
}

#
# File utilities
#
file_exist() {
  if [ -f /tmp/foo.txt ]; then
    echo "File found!"
    exit 0
  else
    echo "File not found!"
    exit 1
  fi
}

directory_exist() {
  # sugar for does file exist
  file_exist
}

file_does_not_exist() {
  # curry the arguments to the next function
  ! file_exist
}

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

#
# Permissions
#
can_read() {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
}

can_write() {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
}

can_execute() {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
}

has_permissions() {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
}

has_permission_gt() {

}

has_permission_lt() {

}
