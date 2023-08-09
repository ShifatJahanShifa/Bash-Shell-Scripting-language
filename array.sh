#! /usr/bin/bash

array=('ubuntu' 'kali' 'fedora')
unset array[1]
echo "${array[@]}"
echo "${array[0]}" "${array[1]}" "${array[2]}"
echo "${!array[@]}"
echo "${#array[@]}"

string=qwertyuioopljjhggafs
echo "${string[@]}"
echo "${string[0]}"
echo "${#string[@]}"
echo "${!string[@]}"
echo "${string[1]}"