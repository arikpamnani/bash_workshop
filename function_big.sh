#!/bin/bash

# a function to rename .txt files to .html
function txt2html {
	for var in ./*.txt
	do
		# echo $var
		mv $var ./$( basename -s .txt $var ).html
	done	
}

txt2html