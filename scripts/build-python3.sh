#!/bin/bash
#### Description: downloads and installs python 3.5.2 locally
#### Written By: Abe Park <abepark01@gmail.com>

PYTHON_VERSION=3.5.3
PREFIX=$HOME/.local

WORK_DIR=$HOME/src
TMP_DIR=$WORK_DIR/tmp/python
LD_RUN_PATH=$PREFIX/lib64
SRC_DIR=$WORK_DIR/Python-${PYTHON_VERSION}


# Setup folders
mkdir -p $PREFIX
mkdir -p $WORK_DIR
mkdir -p $TMP_DIR


# Download the source files
if [ ! -d ${SRC_DIR} ]
then
  cd $WORK_DIR
  wget -q https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz
  tar xvf Python-${PYTHON_VERSION}.tgz
fi


# Build
cd $TMP_DIR
${SRC_DIR}/configure  \
  --enable-shared           \
  --prefix=${PREFIX}
make
make install
