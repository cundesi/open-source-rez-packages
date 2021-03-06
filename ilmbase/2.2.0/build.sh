#! /bin/bash

export PACKAGE_INSTALLATION_ROOT=~/packages
export PACKAGE_NAME=ilmbase
export PACKAGE_VERSION=2.2.0
export MAKE_THREADS=28

mkdir -p $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION

cd ilmbase-2.2.0
./configure --prefix=$PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/
make -j$MAKE_THREADS
make install -j$MAKE_THREADS
cd ..
cp package.py $PACKAGE_INSTALLATION_ROOT/$PACKAGE_NAME/$PACKAGE_VERSION/
