#!/bin/env bash

set -e

if ! [ -x $(command -v go) ]
then

  if [ ! -f "$filename" ]
  then
    wget https://go.dev/dl/go1.19.1.linux-amd64.tar.gz
  fi

  sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.19.1.linux-amd64.tar.gz

  # sudo rm -f go1.19.1.linux-amd64.tar.gz
fi