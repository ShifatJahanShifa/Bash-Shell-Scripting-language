#! /usr/bin/bash

#with integer using flag
count=10

if [ $count -eq 10 ] 
then 
    echo "condition is true"
fi 

if [ $count -ne 1 ] 
then 
    echo "condition is true"
fi 

if [ $count -gt 5 ] 
then 
    echo "condition is true"
fi 

if [ $count -ge 10 ] 
then 
    echo "condition is true"
fi 

if [ $count -lt 1 ] 
then 
    echo "condition is true"
fi 

if [ $count -le 10 ] 
then 
    echo "condition is true"
fi 

#for string 
name="abc"

if [ $name = "abc" ] 
then 
    echo "equal"
fi 

if [ $name > "ab" ] 
then 
    echo "greater"
fi 

if [[ $name < "abcr" ]] 
then 
    echo "less"
fi 

if [ $name != "abcd" ] 
then 
    echo "condition is true"
fi 


# if-then, if-then-else, if-elif-else
number=5

if [ $number -eq 7 ] 
then 
    echo "equal"
elif [ $number -ne 5 ] 
then
    echo "not equal"
else 
    echo "no condition matched"
fi
