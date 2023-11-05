#! /usr/bin/bash

#argument using variable
echo $1
#argument using array
args=("$@")
echo ${args[0]} ${args[1]}

echo $@
#number of argument passed
echo $# 