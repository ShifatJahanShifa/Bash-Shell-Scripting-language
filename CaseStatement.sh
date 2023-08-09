#! /usr/bin/bash

#by passing argument
vehicle=$1

case $vehicle in 
    "car" ) 
        echo "rent of $vehicle is 100 dollar" ;;
    "van" )
        echo "rent of $vehicle is 10 dollar" ;;
    * )
        echo "vehicle is unknown" ;;
esac 

#by entering value
echo -e "enter any character: \c"
read character

case $character in 
    [a-z] ) 
        echo "entered character $character from a to z" ;;
    [A-Z] )
        echo "entered character $character from A to Z" ;;
    ? )   #for single special character
        echo "entered special character $character" ;;
    * )    #for invalid input like string in this case
        echo "character is unknown" ;;
esac 