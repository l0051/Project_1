#!/bin/bash

# Print all file names on given folder with subfolders

if [ $# != 0 ]
then
	echo Must be 0 argument
	exit
fi

find . -type f
#find . # if we want to type directories andregular files 
