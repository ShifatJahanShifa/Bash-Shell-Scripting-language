#! /usr/bin/bash

#printing 1 to 10 using while loop
n=1

while [ $n -le 10 ]
do
    echo "$n"
    n=$(( n+1 ))
    #(( n++ ))
    sleep 1
done