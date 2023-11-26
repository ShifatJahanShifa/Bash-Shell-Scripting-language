#! /usr/bin/bash

select name in mark john tom ben
do
    case $name in 
    "mark" ) 
        echo "mark, you are selected" ;;
    "john" ) 
        echo "john, you are not selected" ;;
    "tom" ) 
        echo "tom, you are selected" ;;
    "ben" ) 
        echo "ben, you are selected" ;;
    * ) 
        echo "invalid option" ;;

    esac
done