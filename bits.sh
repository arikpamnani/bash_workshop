#!/bin/bash

var="Apple"	#no spaces
echo $var	#$ sign for reading a variable

dir=/home/arik/bash_workshop
ls -l $dir	

# $0 - name of the bash script
# $1 - first argument to the bash script
# $2 - second argument to the bash script

# $? - exit status of the most recently run process

cp $1 $2	#copy $1 (file) to $2 (file)
echo Content of $2 - 
cat < $2	#display content of a file

#command substitution
my_var=$(ls /usr | wc -w)	#no. of items in /usr
echo $my_var






#exporting variables
my_var_2="random"

export my_var_2	#make my_var_2 an environment variable
./bin/bin1.sh
