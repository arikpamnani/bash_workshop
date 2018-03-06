#!/bin/bash

# function to calculate sq. root by newtons method
function root {
  # bash doesn't support floats, so multiplyting 
  # .. by 1e6   
  number=$(($1*1000000))
  previous=$(($1/2))
  root=$(($1/2))
  for i in {1..1000}
  do
    root=$(((number/previous+previous)/2))
    let previous=root
  done
  #                              2
  # till here our root contains π  x 1e16, so
  # .. dividing by 1e8 will give us value of π 
  echo $((root/100000000)).$(((root%100000000)/1000000))
}

# pi squared
sq_pi=0

#   2
#  π     1     1     1     1   
# --- = --- + --- + --- + --- + ...
#  6     1     4     9     16

for i in {1..1000}
do
  # bash doesn't support floats, so multiplyting 
  # .. by 1e10   
  let sq_pi+=$((10000000000/(i*i)))
done
let sq_pi*=6

root $sq_pi

expr a=3.14 | bc -l
echo $a
echo 4/2.0 | bc -l
