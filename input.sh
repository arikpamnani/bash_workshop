#!/bin/bash

read name
echo "Hello, $name!"

#-p and -sp options
#-s -> makes input silent

read -p 'Username: ' username
read -sp 'Password: ' password
echo	#change line

echo "Username - $username"
echo "Password - $password"

read var1 var2 var3
echo "var1: $var1"
echo "var2: $var2"
echo "var3: $var3"

#reading from STDIN
echo "READING FROM STDIN"
echo

#STDIN (/dev/stdin), STDOUT (/dev/stdout), STDERR (/dev/stderr)

#reads STDIN, cut, and sort
cat /dev/stdin | cut -d',' -f 1,3 | sort




