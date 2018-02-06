#!/bin/bash
PREFIX=$HOME/.local
PYTHON3_CONFIG_DIR="$(python3.5m-config --configdir)"
cd ~/src/neovim
make clean
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.local -DCMAKE_BUILD_TYPE=Release"
make install
