#!/bin/bash

#-------------------------------------------------------#

# let <expression>
# saves the result to a variable

let a=2+20	#no spaces
echo $a

let "a = 11 + 4"	#can have spaces
echo $a

let "a = 2*3"
echo $a

let "a = 12/5"
echo $a

# useful in loops
let a++		# let a=$a+1
echo $a

let a--
echo $a

#-------------------------------------------------------#

# expr <expression>
# prints the answer instead of saving

expr 2 + 20		#[spaces] and [no quotes]

expr 2+20	#prints 2+20
expr "2 + 20"	#prints 2 + 20

expr 12 \* 5	#escape * with \* 
# * as a wildcard 
# type ls b* in the shell

expr 4 % 3

#command substitution
a=$( expr 4 + 22 )
echo $a 

#-------------------------------------------------------#

a=$(( 2 + 32 ))		#with spaces
echo $a

a=$((1+1))		#without spaces
echo $a

b=$(( $a+2 ))
echo $b

(( b++ ))	#another way of incrementing
