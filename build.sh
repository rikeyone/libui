#!/bin/sh

PWD=`pwd`
INSTALL_DIR=${PWD}/install

mkdir -p ${INSTALL_DIR}

meson setup build --prefix=${INSTALL_DIR} --buildtype=debug --default-library=shared
ninja -C build
ninja -C build install
