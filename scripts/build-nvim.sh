#!/bin/bash
PREFIX=$HOME/.local
PYTHON3_CONFIG_DIR="$(python3.5m-config --configdir)"
WORK_DIR="${HOME}/src"
SRC_DIR="${WORK_DIR}/neovim"

make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.local -DCMAKE_BUILD_TYPE=RelWithDebInfo"
make install
