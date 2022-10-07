#!/bin/bash

# A shell script that prompts the user for a name of a file or directory
# and reports if it is a regular file, a directory

m_reg='An argument is a regular file'
m_dir='An argument is a directory'
error_m_one_arg='Must be one argument'
error_m_no_path='No such path'

if [ $# != 1 ]
then
        echo $error_m_one_arg
        exit
fi

if [ ! -e "$1" ]
then
        echo $error_m_no_path
        exit
fi

if [ -d "$1" ]
then
	echo $m_dir
else
	echo $m_reg
fi

