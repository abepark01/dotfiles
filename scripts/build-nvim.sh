#!/bin/bash
PREFIX=$HOME/.local
PYTHON3_CONFIG_DIR="$(python3.5m-config --configdir)"
cd $HOME/scripts/neovim
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.local" CMAKE_BUILD_TYPE=Release
make install
