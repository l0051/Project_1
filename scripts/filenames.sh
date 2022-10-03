#!/bin/bash

# Print all file names on given folder with subfolders

if [ $# -gt 1 ]
then
	echo Must be 0 or 1 argument
	exit
fi

if [ $# == 0 ]
then
	find .
else
	if [ ! -e $1 ] && [ ! -e ./$1 ] && [ ! -d $1 ] && [ ! -d ./$1 ]
	then
		echo No such directory
		exit
	fi
	if [ -d $1 ]
	then
		find $1
	else
		find ./$1
	fi
fi
