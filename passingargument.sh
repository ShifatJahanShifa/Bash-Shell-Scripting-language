#! /usr/bin/bash

#argument using variable
echo $0,$1,$2,$3

#argument using array
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}

echo $@
#number of argument passed
echo $#