#! /usr/bin/bash

DIR1=DemiLovato
DIR2=Jal
DIR3=KK

if [ ! -d $DIR1 ] 
then 
    mkdir $DIR1
fi

if [ ! -d $DIR2 ] 
then 
    mkdir $DIR2
fi

if [ ! -d $DIR3 ] 
then 
    mkdir $DIR3
fi 

#array
files=$(ls *.mp3)

for item in $files
do
case $item in
    "LabooKo.mp3" )
        mv $item $DIR3 ;;
    "LetItGo.mp3" )
        mv $item $DIR1 ;;
    "WooLamhe.mp3" )
        mv $item $DIR2 ;;
    * )
        echo "unknown pattern"
        ;;
esac
done