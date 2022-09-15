#!/bin/bash

# Count lines in file given in argument

if [ $# != 1 ]
then
	echo Must be one argument 
	exit
fi

if [ ! -e $1 ] && [ ! -e ./$1 ]
then
	echo An argument is not a path
	exit
fi

warning='An argument must be text file not directory'

if [ -e ./$1 ]
then
	if [ -d ./$1 ]
	then
		echo $warning
	else
		wc -l < ./$1
	fi
	exit
else
	if [ -d $1 ]
	then
		echo $warning
	else
		wc -l < $1
	fi
	exit
fi

