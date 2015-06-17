#!/usr/bin/env zsh

#
# Permissions
#
function can_read {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
  permissions=fetch_permissions $1
}

function can_write {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
  permissions=fetch_permissions $1
}

function can_execute {
  # $1 is the file name
  # $2 [optional] a specified user in the system or the user running the tests
  permissions=fetch_permissions $1
}

function has_permissions_gt {
  permissions=fetch_permissions $1
}

function has_permissions_lt {
  permissions=fetch_permissions $1
}

function fetch_permissions {
  stat -r $1 | awk '{ print $3 }'
}
