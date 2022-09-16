#!/bin/bash

# Write cmake file to build and link two files (c++)


if [ $# != 2 ]
then
	echo Must be 2 arguments
	exit
else
	cmake="echo -e  cmake_minimum_required(VERSION 3.13)\nproject(cmake_)\nset(CMAKE_CXX_STANDART 14)\nadd_executable(exec $1 $2)"

	if [ -e $1 ] && [ -e $2 ] && [ ! -d $1 ] && [ ! -d $2 ]
	then
		#main work
		touch CMakeLists.txt
		$cmake > CMakeLists.txt
	else
		echo Argument is not regular files
	fi
fi
