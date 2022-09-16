#!/bin/bash

# A shell script that prompts the user for a name of a file or directory
# and reports if it is a regular file, a directory

if [ $# != 1 ]
then
        echo Must be one argument 
        exit
fi

if [ ! -e $1 ] && [ ! -e ./$1 ]
then
        echo $mstart not a file
        exit
fi

mreg=' a regular file'
mdir=' a directory'

echo -n 'An argument is '

if [ -e ./$1 ]
then
        if [ -d ./$1 ]
        then
                echo $mdir
        else
                echo $mreg
        fi
else

        if [ -d $1 ]
        then
                echo $mdir 
        else
                echo $mreg
        fi
fi


