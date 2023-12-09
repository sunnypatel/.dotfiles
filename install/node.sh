#!/usr/bin/env bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"

# Install node via nvm
if ! [ -x "$(command -v nvm)" ]; then
  echo 'node is not found ... installing' >&2

  # install nvm
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

  nvm install
  exit 0 
else 
  echo 'node already installed'
fi

