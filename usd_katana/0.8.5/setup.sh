#! /bin/bash

wget https://github.com/PixarAnimationStudios/USD/archive/v0.8.5.tar.gz
tar -xvf v0.8.5.tar.gz

# patch so that we can build the katan plugin without building all of usd
# assumes usd is already built and installed as a rez package
rm USD-0.8.5/third_party/katana/CMakeLists.txt
rm USD-0.8.5/CMakeLists.txt
rm USD-0.8.5/cmake/defaults/Options.cmake
cp patch/CMakeLists_katana.txt USD-0.8.5/third_party/katana/CMakeLists.txt
cp patch/CMakeLists_root.txt USD-0.8.5/CMakeLists.txt
cp patch/Options.cmake USD-0.8.5/cmake/defaults/Options.cmake
