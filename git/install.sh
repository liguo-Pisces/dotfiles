#!/usr/bin/env bash

CURRENT_PATH=$(dirname $(realpath $0))

set -e

# Symlink
if [ ! -f ~/.gitconfig ]
then
  ln -s "$CURRENT_PATH"/gitconfig.symlink ~/.gitconfig
fi
