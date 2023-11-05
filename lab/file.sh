#! /usr/bin/bash

DIR=$PWD

# pwd
echo $PWD 

#cd 
cd ..
echo $PWD
cd $DIR
echo $PWD

#ls
ls -al

#mkdir 
DIR1=check
mkdir $DIR1
ls -al

#rmdir
rmdir $DIR1
ls -al

#copy
cp c.txt b.txt

touch p.txt
#move or rename
mv p.txt ..
mv fileOperation.sh file.sh
