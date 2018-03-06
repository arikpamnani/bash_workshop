#!/bin/bash

# function to print a string
function my_func {
	echo "my first function"
}
#calling my_func
my_func	

#------------------------------------------------------------#

# function to print first two arguments
function print {
	echo "argument 1 $1"
	echo "argument 2 $2"
}
#calling print
print "first" "second" 

#------------------------------------------------------------#

# function to add two numbers
function add {
	# $((..)) for arithmetic expression
	return $(($1+$2))
}
add 2 3
echo $?

#------------------------------------------------------------#

# function to print number of characters in a file
function num_char {
	cat $1 | wc -c
}
num_char bin/a.txt