#!/usr/bin/env zsh

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
# Source all files we need here
#
source ./src/reporters/simple.sh

#
# Bop env variables
#
BOP_SPACE_INDENT=0
BOP_INDENT_AMOUNT=2
BOP_LAST_TEST_RESULT=""
BOP_LAST_TEST_MESSAGE=""

BOP_SETTING_QUIET=true
BOP_SETTING_COLOR=true

function suite {
  suite_message=$1

  if [ ! -z "$suite_message" ]; then
    success $suite_message
    _add_indent
  else
    success "end of suite"
    _remove_indent
  fi
}

function describe {
  test_message=$1
  # reset last test exit code
  _reset

  if [ ! -z "$test_message" ]; then
    warning $test_message
  else
    warning "end of describe"
  fi
}

#
# Suite manages logic on what tests are running
# and
#

# describe() {
#   # is string given its the start of a block
#   # otherwise it's the end
# }

# private

function _add_indent {
  BOP_SPACE_INDENT=$(( $BOP_SPACE_INDENT + $BOP_INDENT_AMOUNT ))
}

function _remove_indent {
  BOP_SPACE_INDENT=$(( $BOP_SPACE_INDENT - $BOP_INDENT_AMOUNT ))
}

function _reset {
  BOP_LAST_TEST_RESULT=0
  BOP_LAST_TEST_MESSAGE=""
}
