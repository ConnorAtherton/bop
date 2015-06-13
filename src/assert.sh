#!/usr/bin/env zsh

function assert_string_equal() {
  # TODO double or single equal here
  if [ $1 = $2 ]; then
    echo "Match"
    exit 0
  else
    echo "No Match"
    exit 1
  fi
}

function asset_string_not_equal() {

}

function assert_empty() {
  if [ ! -z  "${1// }" ]; then
    echo "Variable is empty not"
    exit 1
  fi
}

function assert_not_empty {
  if [ -z  "${1// }" ]; then
    echo "Variable is empty"
    exit 1
  fi
}
