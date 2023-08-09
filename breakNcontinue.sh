#! /usr/bin/bash

n=10
for (( i=0; i<$n; i++ ))
do 
    if [ $i -gt 5 ] 
    then 
        break;
    fi 
    echo $i 
done

echo "-----------------------------*----------------------"
echo 

for (( i=0; i<$n; i++ ))
do 
    if [ $i -eq 3 -o $i -eq 6 ] 
    then 
        continue;
    fi 
    echo $i 
done

