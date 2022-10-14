#!/bin/bash

# Count lines in regular file given in argument

error_arg_is_directory='An argument must be a regular file not directory'
error_one_arg='Must be one argument'
error_arg_is_not_file_path='An argument is not a file path'

if [ $# != 1 ]
then
	echo "$error_one_arg" 
	exit
fi

if [ ! -e "$1" ]
then
	echo "$error_arg_is_not_path"
	exit
fi

if [ -d "$1" ]
then
	echo "$error_arg_is_directory"
else
	wc -l < "$1"
fi
