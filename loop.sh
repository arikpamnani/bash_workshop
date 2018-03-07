#!/bin/bash

# for loop
for var in {-10..5..2}
do
	echo $var
done

#-------------------------------------------------------#

echo
# print contents of the current directory
for var in ./*
do
	echo $var
done
#-------------------------------------------------------#

echo
# while loop
counter=1
while [ $counter -le 10 ]
do
	echo $counter
	counter=$(($counter+1))
done

#-------------------------------------------------------#

echo 
#until loop
counter=1
until [ $counter -gt 10 ]
do
	echo $counter
	counter=$(($counter+1))
done

