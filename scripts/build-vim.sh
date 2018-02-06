#!/bin/bash
PREFIX=$HOME/.local
PYTHON3_CONFIG_DIR="$(python3.5m-config --configdir)"
WORK_DIR="${HOME}/src"
SRC_DIR="${WORK_DIR}/vim"

cd "$SRC_DIR"
./configure --with-features=huge  \
  --enable-multibyte  \
  --enable-rubyinterp=yes \
  --enable-python3interp=yes  \
  --with-python3-config-dir=${PYTHON3_CONFIG_DIR} \
  --enable-perlinterp=yes \
  --prefix=${PREFIX}
make
make install
