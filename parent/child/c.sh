#! /usr/bin/bash

#c 
read path
echo $path

#command
if [ -d "$path" ] 
then 
    cd 
    cd $path
    files=$(ls)
    for item in $files
    do
        echo $item
        if [[ -f $item && $item == *bsse11* ]] 
        then 
            newName=$(echo $item | tr '[:lower:]' '[:upper:]')
            echo changed to be $newName
            mv $item $newName
        fi
    done
    echo
    ls 
fi