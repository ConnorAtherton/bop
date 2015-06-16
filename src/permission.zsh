#!/usr/bin/env zsh

#
# Permissions
#
# $1 is the file name
function can_read {
  # $2 [optional] a specified user in the system or the user running the tests
}

function can_write {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
}

function can_execute {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
}

function has_permissions {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
}

function has_permissions_gt {

}

function has_permissions_lt {

}

function fetch_permissions {
  # return permissions in a string format
}
