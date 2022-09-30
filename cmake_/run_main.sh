#!/bin/bash

# Run program with CMakeLists.cpp

if [ ! -d ./build ]
then
	mkdir build
fi

cd build
cmake ..
make
./exec

