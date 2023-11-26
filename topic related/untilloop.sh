#! /usr/bin/bash

n=1

until [ $n -gt 5 ] 
do 
    echo $n 
    (( n++ )) 
done