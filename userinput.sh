#! /usr/bin/bash

#read input from user
echo "Enter Name: "
read name
echo "entered name: "
echo $name

echo "Enter Names: "
read name1 name2 name3
echo "entered name: "
echo names: $name1, $name2, $name3 

#input on same line or promt , -p means promt
read -p "enter username: " user_name
echo username: $user_name

#very important feature i have seen in steghide tool before
read -p "enter username: " user_name
read -sp "enter password: " user_password
echo
echo username: $user_name
echo password: $user_password

#reading input stored into array
read -a names
echo names: ${names[0]}, ${names[1]}

#default variable : reply
echo enter your name: 
read
echo name: $REPLY