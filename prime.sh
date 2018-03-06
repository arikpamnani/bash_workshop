#!/bin/bash

#script to check whether a number is prime

echo "Enter a num - "
read num

#counter iterates from 2 to num-1
counter=2	

while [ $counter -lt $num ]
do
	rem=$(($num % $counter))

	if [ $rem -eq 0 ]
	then
		echo "$num is a composite number"
		exit
	fi
	
	#increase counter by 1
	counter=$(($counter+1))
	# ((counter++))
done

echo "$num is a prime number"
