#!/bin/env bash

CURRENT_PATH=$(dirname $0)

set -e


# Symlink
ln -s "$CURRENT_PATH"/zshrc.zsh ~/.zshrc
