#!/usr/bin/env bash


CURRENT_PATH=$(dirname $(realpath $0))

set -e

# Symlink
if [ ! -f ~/.fzf.zsh ]
then
  ln -s "$CURRENT_PATH"/fzf.symlink.zsh ~/.fzf.zsh
fi
