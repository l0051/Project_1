#!/bin/bash

# Run program with CMakeLists.cpp

if [ -d ./build ]
then
	rm -r build
fi

mkdir build

cd build
cmake ..
make
./hello

