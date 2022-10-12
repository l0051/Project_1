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

multiplier=1

number=$1

number_0_int=$( echo "$number" | grep "^-\?[0-9][0-9]*$" )
number_int=$( expr "$number_0_int" : "[-0]*\(.*\)[0]*" )

if [ "$number_0_int" = "" ]
then
	echo "$error_m_number"
	exit
elif [ "$number_int" = "" ]
then
	number=0
else
	number="$number_int"
fi

if [ "$number_0_int" -lt 0 ]
then
	multiplier=-1
fi

if [ ${#number} -gt ${#maxI} ] || [ $((number - maxI)) -gt 0 ]
then
        echo "$error_m_too_big"
        exit
fi

answer=0

while [ "$number" -gt 0 ]
do
	((answer*=10))
	((answer+=$((number%10))))
	((number/=10))
done

if [ ${#answer} -gt ${#maxI} ] || [ $((answer - maxI)) -gt 0 ]
then
        echo "$error_m_too_big"
        exit
else
	((answer*=multiplier))
	echo "$answer"
fi
