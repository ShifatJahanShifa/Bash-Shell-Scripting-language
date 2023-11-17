#! /usr/bin/bash

file=$1
#char=$(cat $file | tr -d '\n' | wc -c $file)
#word=$(wc -w $file)
#line=$(cat $file | tr -d '\n' | wc -l $file)
#echo character= $char
#echo word= $word
#echo line= $line

#tac $file

limit=$2
echo $1, $2

if [[ ! -e $file ]] 
then 
    echo "$file doesn't exist"
    exit 1
fi

count=$(wc -w<$file)
echo "word = $count"

if [[ $count -gt $limit ]] 
then
    if [ -w $file ] 
    then 
        echo "yes"
        chmod a-w $file 
        echo $(ls -l $file)
    fi 
fi
