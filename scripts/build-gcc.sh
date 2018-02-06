#!/bin/bash
#### Description: downloads and installs gcc 6.3.0 locally
#### Written By: Abe Park <abepark01@gmail.com>

GCC_VERSION=6.3.0
INSTALLDIR="${HOME}/.local"
WORKDIR="${HOME}/src"
SRCDIR="${WORKDIR}/gcc-${GCC_VERSION}"
OBJDIR="${WORKDIR}/objdir"

# setup folders
if [ ! -z "$OBJDIR" ]
then
  rm -fr "${OBJDIR}"
fi

mkdir -p "${OBJDIR}"
mkdir -p "${WORKDIR}"
mkdir -p "$INSTALLDIR"

# Download the source
cd "${WORKDIR}"
if [ ! -d "${SRCDIR}" ]; then
  wget -q http://mirrors-usa.go-parts.com/gcc/releases/gcc-${GCC_VERSION}/gcc-${GCC_VERSION}.tar.bz2
  tar xvf gcc-${GCC_VERSION}.tar.bz2
fi

# Download the prerequisites
cd "${SRCDIR}"
./contrib/download_prerequisites

cd "${OBJDIR}"

# Build
${SRCDIR}/configure \
  --prefix=${INSTALLDIR}        \
  --enable-shared               \
  --enable-threads=posix        \
  --enable-__cxa_atexit         \
  --enable-clocale=gnu          \
  --enable-languages=c,c++      \
  --enable-bootstrap
make bootstrap
make install

