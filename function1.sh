#! /usr/bin/bash

funct1 () {
    echo $1 $2 $3
}

print () {
    local name=$1
    echo "the name is $name"
}

name="mark"
echo "the name is $name"

funct2 () {
    exit
}

funct1 hello world shell
print tom
echo "the name is $name"
funct2