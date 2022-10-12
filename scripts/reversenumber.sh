#!/bin/bash

# A shell script to print a number in reverse order

error_m_one_arg='Must be one argument'
error_m_number='An argument should be an integer'

maxI=$( echo "$(printf "%u" -1)" / 2  | bc ) 

error_m_too_big="An argument and it's reverse should be\
less or equal than $maxI and more or equal to -$maxI"

if [ $# != 1 ]
then
	echo "$error_m_one_arg"
	exit
fi

multiplier=1

number=$1

if [[ "${number:0:1}" = "-" ]]
then
        number="${number:1}"
	multiplier=-1
fi

if ! [[ $number =~ ^[0-9]+$ ]]
then
	echo "$error_m_number"
	exit 
fi

if [[ $number =~ ^[0]+$ ]]
then
        echo "0"
        exit
fi

while [ "${number:0:1}" = 0 ] && [ ! "$number" -eq 0 ]
do
        number="${number:1}"
done

if [ ${#number} -gt ${#maxI} ] || [ $((number - maxI)) -gt 0 ]
then
        echo "$error_m_too_big"
        exit
fi

while [ $((number % 10)) -eq 0 ] && [ ! "$number" -eq 0 ]
do
	((number/=10))
done

answer=0

if [ "$number" -eq 0 ]
then
        echo "$answer"
        exit
fi

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
