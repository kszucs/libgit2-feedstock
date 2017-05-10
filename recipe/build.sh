#!/bin/bash

echo $PREFIX

export LIBSSH2_LIBRARIES=ssh2
export LIBSSH2_LIBRARY_DIRS=$PREFIX/lib

mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX \
         -DCMAKE_PREFIX_PATH=$PREFIX \
         -DCMAKE_FIND_ROOT_PATH=$PREFIX \
         -DCMAKE_BUILD_TYPE=Release \
         -DCMAKE_C_FLAGS=-L$PREFIX/lib

cmake --build . --target install
