#! /usr/bin/bash
#this is my first script
echo "Hello World!" #this is a comment 

#system variable
echo My shell name is $BASH 
echo My shell version is $BASH_VERSION
echo My home directory is $HOME
echo I\'m currently working in $PWD

#user defined variables
name=Shifa
1val=1
val10=10
CAPSVAL=10
echo My name is $name
echo id is $1val
echo correct id $val10
echo another way $CAPSVAL 

#read input from user
echo "Enter Name: "
read name
echo "entered name: "
echo $name

echo "Enter Names: "
read name1 name2 name3
echo "entered name: "
echo names: $name1, $name2, $name3