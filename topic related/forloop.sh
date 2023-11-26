#! /usr/bin/bash

for i in 1 2 3 4 5
do
    echo $i 
done

for i in {1..10..2}
do
    echo $i 
done

echo ${BASH_VERSION}  #bash version 

for (( i=0; i<5; i++ ))
do
    echo $i 
done 

#for loop to execute command
for command in ls pwd date 
do
    echo "-----------------------------$command-------------------------------------"
    $command
done 

for item in * 
do
    if [ -f $item ] 
    then
        echo $item
    fi
done