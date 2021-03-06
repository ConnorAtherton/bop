#!/usr/bin/env zsh

# could try working out the correct one each time
ESCAPE_CHAR="\033"

ASCII_RED="\033[31m"
ASCII_GREEN="\033[32m"
ASCII_YELLOW="\033[33m"
ASCII_RESET="\033[0m"

function print {
  _print_with_indents "$1"
  _reset
}

function success {
  _print_with_indents "${ASCII_GREEN}${1}"
  _reset
}

function warning {
  _print_with_indents "${ASCII_YELLOW}${1}"
  _reset
}

function fail {
  _print_with_indents "${ASCII_RED}${1}"
  _reset
}

function print_newline {
  print ""
}

# private

function _print_with_indents {
  local message="$1"
  local spaces=""

  for (( i=0; i<$BOP_SPACE_INDENT; i++ )); do
    # expand string foo from position i by 1 character
    # echo ${foo:$i:1}
    spaces="$spaces "
  done

  printf "${spaces}${message}\n"
}

function _reset {
  printf $ASCII_RESET
}

# function _support_color {
#   for COLOR in {0..255}
#   do
#       for STYLE in "38;5"
#       do
#           TAG="\033[${STYLE};${COLOR}m"
#           STR="${STYLE};${COLOR}"
#           echo "${TAG}${STR}${NONE}  "
#       done
#   done
# }
