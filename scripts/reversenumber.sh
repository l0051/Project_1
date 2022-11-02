#!/bin/bash

# A shell script to print a number in reverse order

error_m_one_arg='Must be one argument'
error_m_number='An argument should be an integer'

maxI=$( echo "$(printf "%u" -1)" / 2  | bc ) 

error_m_too_big="An argument and it's reverse should be\
less or equal than $maxI and more or equal than -$maxI"


if [ $# != 1 ]
then
	echo "$error_m_one_arg"
	exit
fi

number=$( echo "$1" | grep "^-\?[0-9][0-9]*$" )

if [ "$number" = "" ]
then
        echo "$error_m_number"
        exit
fi

number=$( bc <<< "$number + 0" )
num_abs=${number#-}

if [ "${#num_abs}" -gt "${#maxI}" ]
then
	echo "$error_m_too_big"
        exit
fi

if [ $((num_abs - maxI)) -gt 0 ]
then
        echo "$error_m_too_big"
        exit
fi

answer=0

while ! [ "$number" -eq 0 ]
do
	if [ $(((${answer#-} * 10) - maxI)) -gt 0 ]
	then
        	echo "$error_m_too_big"
        	exit
	fi

	((answer*=10))
	((answer+=$((number%10))))
	((number/=10))
done

echo "$answer"
