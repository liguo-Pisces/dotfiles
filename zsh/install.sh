#!/bin/env bash

CURRENT_PATH=$(dirname $(realpath $0))

set -e

# Symlink
if [ ! -f ~/.zshrc ]
then
  ln -s "$CURRENT_PATH"/zshrc.symlink.zsh ~/.zshrc
fi
