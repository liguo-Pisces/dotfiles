#!/bin/env bash

CURRENT_PATH=$(dirname $(realpath $0))

set -e

# Symlink
if [ ! -f ~/.zshrc ]
then
  ln -s "$CURRENT_PATH"/zshrc.symlink.zsh ~/.zshrc
  ln -s "$CURRENT_PATH"/zpreztorc.symlink.zsh ~/.zpreztorc
  ln -s "$CURRENT_PATH"/zprofile.symlink.zsh ~/.zprofile
  ln -s "$CURRENT_PATH"/zshenv.symlink.zsh ~/.zshenv
  ln -s "$CURRENT_PATH"/zlogin.symlink.zsh ~/.zlogin
  ln -s "$CURRENT_PATH"/zlogout.symlink.zsh ~/.zlogout
fi
