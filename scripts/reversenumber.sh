#!/bin/bash

# A shell script to print a number in reverse order

error_m_one_arg='Must be one argument'
error_m_number='An argument should be an integer'

maxI=$( echo "$(printf "%u" -1)" / 2  | bc ) 

error_m_too_big="An argument and it's reverse should be\
less or equal than $maxI and more or equal than -$maxI"

maxI_half=$((maxI / 2))


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

if [ "${#number}" -gt $((${#maxI} + 1)) ]
then
	echo 1
	echo "$error_m_too_big"
        exit
fi

number_half=$((number / 2))

if [ $((maxI_half + number_half)) -lt 0 ] || [ $((maxI_half + number_half)) -ge $maxI ]
then
        echo "$error_m_too_big"
        exit
fi

answer=0

while ! [ "$number" -eq 0 ]
do
	((answer*=10))
	((answer+=$((number%10))))
	((number/=10))
done

if [ $((maxI_half + number_half)) -lt 0 ] || [ $((maxI_half + number_half)) -ge $maxI ]
then
        echo "$error_m_too_big"
        exit
else
	echo "$answer"
fi
