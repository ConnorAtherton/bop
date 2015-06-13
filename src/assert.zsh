#!/usr/bin/env zsh

function assert_string_equal {
  if [ "$1" == "$2" ]; then
    echo "Match"
  else
    echo "No Match"
    exit 1
  fi
}

function asset_string_not_equal {
  ! assert_string_equal "$1"
}

function assert_empty {
  if [ ! -z  "${1// }" ]; then
    echo "Variable is not empty"
    exit 1
  fi
}

function assert_not_empty {
  [ ! assert_empty "$1" ] && exit 1
}

function assert_greater {

}

function assert_less {

}

function assert_greater_or_equal {

}

function assert_less_or_equal {

}
