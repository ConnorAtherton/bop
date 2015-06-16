#!/usr/bin/env zsh

BOP_ROOT=${0:a:h}
BOP_BIN_PATH="${BOP_ROOT}/bin/bop"
BOP_SYMLINK_PATH="/usr/local/bin/bop"

# Overwrite the last symlink
# TODO: should we trap error and give user the choice?
ln -sf $BOP_BIN_PATH $BOP_SYMLINK_PATH
chmod 755 $BOP_SYMLINK_PATH

# export these so we can easily source other scripts
# from sub shells
export BOP_ROOT
