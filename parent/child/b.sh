#! /usr/bin/bash

#b
#path="$HOME/Bash-Shell-Scripting-language/parent"
read path
echo $path

#command
if [ -d "$path" ] 
then 
    cd 
    cd $path
    ls bsse11* | sort
fi