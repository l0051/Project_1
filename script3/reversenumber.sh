#!/bin/bash

# A shell script to print a number in reverse order

number=$1

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
