#!/bin/bash

# A shell script to print a number in reverse order

error_m_one_arg='Must be one argument'
error_m_number='An argument should be a positive integer'

maxI=$( echo `printf "%u" -1` / 2  | bc ) 

error_m_too_big="An argument should be less or equal than $maxI"

if [ $# != 1 ]
then
	echo $error_m_one_arg
	exit
fi

if ! [[ $1 =~ ^[0-9]+$ ]]
then
	echo $error_m_number
	exit 
fi

if [ ${1:0:1} = 0 ] && [ ! $1 = 0 ]
then
	echo $error_m_number
	exit
fi

number=$1

if [ ${#1} -gt ${#maxI} ] || [ $(($number - $maxI)) -gt 0 ]
then
        echo $error_m_too_big
        exit
fi

if [ $number -eq 0 ]
then
	echo $number
	exit
fi

while [ $number -gt 0 ]
do
	echo -n $(($number % 10))
	((number/=10))
done
echo "" 
