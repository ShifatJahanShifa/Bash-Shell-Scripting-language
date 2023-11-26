#! /usr/bin/bash

num1=10
num2=5

#add,minus,multiplication, division, modular

echo $(expr $num1 + $num2)
echo $(expr $num1 - $num2)
echo $(expr $num1 \* $num2)
echo $(expr $num1 / $num2)
echo $(expr $num1 % $num2)
