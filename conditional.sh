#!/bin/bash

# check if a number is greater than 100
if [ $1 -gt 100 ]
then
	echo "$1 is greater than 100"
fi

#------------------------------------------------#

# check if a file exists and it's size > 0
if [ -s test_file.txt ]
then
	echo "test_file.txt exists"
fi

#------------------------------------------------#

# if-else
if [ $(($1 % 2)) -eq 0 ]
then
	echo "$1 is even"
else
	echo "$1 is odd"
fi
