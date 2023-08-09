#! /usr/bin/bash

#script to verify whether the file exists or not

usage () {
    echo "you need to provide argument"
}

isFileExist () {
    local file=$1
    [[ -f $file ]] && return 0 || return 1
} 

[[ $# -eq 0 ]] && usage

if ( isFileExist $1 ) 
then 
    echo "file found"
else 
    echo "file not found"
fi
