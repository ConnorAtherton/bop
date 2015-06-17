#!/usr/bin/env zsh

#
# eventually this will be
# #1/usr/bin/env bop

#
# Features
# - should aim to support zshell
# - should capture exit codes and perform the full tests
# - should be able to pass flags (--fail-fast, --no-color)
# - should be able to indent for expresiveness
# - should be able to skip tests
# - should be super quick
# - shold output in human and machine readable format (TAP, JSON)
#

# TODO print help message
# TODO print usage message

#
# Example
#
# suite "This is a test suite"
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
# Source all files we need here
#
source ./src/reporters/simple.zsh

#
# Bop env variables
#
BOP_SPACE_INDENT=0
BOP_INDENT_AMOUNT=2

BOP_LAST_TEST_RESULT=""
BOP_LAST_TEST_MESSAGE=""
BOP_STARTED_TEST_SUITE=0

BOP_SETTING_QUIET=true
BOP_SETTING_COLOR=true

BOP_TIMER_START=0
BOP_TIMER_END=0

function suite {
  local suite_message="$1"

  if [ ! -z "$suite_message" ]; then
    BOP_STARTED_TEST_SUITE=1
    success $suite_message
    _add_indent
  else
    BOP_STARTED_TEST_SUITE=0
    _remove_indent
  fi
}

function describe {
  local test_message="$1"
  _reset_test_status

  if [ ! -z "$test_message" ]; then
    warning $test_message
  else
    _reset_test_status
  fi
}

function setup {
}

function teardown {

}

# private

function _add_indent {
  BOP_SPACE_INDENT=$(( $BOP_SPACE_INDENT + $BOP_INDENT_AMOUNT ))
}

function _remove_indent {
  BOP_SPACE_INDENT=$(( $BOP_SPACE_INDENT - $BOP_INDENT_AMOUNT ))
}

function _reset_test_status {
  BOP_LAST_TEST_RESULT=0
  BOP_LAST_TEST_MESSAGE=""
}
