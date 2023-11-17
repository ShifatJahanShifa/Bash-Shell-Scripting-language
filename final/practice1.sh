#! /usr/bin/bash

#----------------------- basic ----------------------------
#ls command
#list=$( ls -al )
#echo $list
#for item  in $list 
#do 
#echo $item
#done 
#echo $PWD
#echo $(man ls) 

#echo $(date)
#echo $(calendar)
#echo $(who)
#echo $BASH_VERSION
#echo $HOME 

# modify a time stamp
#touch -t 202311161900 hello.class
#echo i\'m shifa
#read bin
#rmdir $bin
#read -a array
#echo ${array[0]}, ${array[1]}, ${array[2]} 
#echo ${#array[@]}
#n1=3
#n2=5
#echo $(expr $n1 + $n2)
#echo $1, $2, $0
#------------- array ---------------------------
#a=('shi' 'fir' 'did')
#echo ${a[@]}
#echo ${#a[@]}
#echo ${!a[@]}
#a[3]='mac'
#a[4]='5'
#echo ${a[@]}
#echo ${#a[@]}
#echo ${!a[@]}
#unset a[2]
#echo ${a[@]}
#echo ${#a[@]}
#echo ${!a[@]}

#---------------------- string --------------------------
#string="helloooo"
#echo ${string[@]}
#echo ${#string[0]} 

#------------------ command line arg -** ---------------------------
#args=("$@")
#echo $@
#echo $#
#------------------ hard and soft link ----------------------------------
#cat>a.txt
#cat a.txt
#hard link
#ln a.txt b.txt
#cat b.txt
#cat>>a.txt
#cat b.txt
#cat a.txt
#cat>>b.txt
#cat b.txt
#cat a.txt
#rm a.txt 

#soft link
#cat>a.txt
#cat a.txt
#ln -s a.txt b.txt
#cat b.txt
#cat>b.txt
#cat b.txt
#cat a.txt
#rm a.txt

#------------------------------- q 5-------------------------
#echo $(date '+%Y-%m-%d')
#echo $(date '+%H %M %S')

#---------------------q 6 ---------------------
#read n
#echo $n
#len=${#n[0]}
#for (( i=len-1; i>-1; i-- ))
#do
#    r=$r${n:$i:1}
#done
#echo $r

#------------------- q 7 ------------------------------
#read n
#echo $n
#len=${#n[0]}
#for (( i=len-1; i>-1; i-- ))
#do
#    r=$(expr $r + ${n:$i:1})
#done
#echo $r

#------------------------- q 9 -0--------------
n1=5.12
n2=2.5
c=$( echo $n1 + $n2 | bc)
#echo $n1+$n2 | bc
echo $c


#------------color--------------------

# ANSI escape codes for text formatting
#bold=$(tput bold)
#blink=$(tput blink)
#reset=$(tput sgr0)

# ANSI escape codes for text colors
#red=$(tput setaf 1)
#green=$(tput setaf 2)
#yellow=$(tput setaf 3)
#blue=$(tput setaf 4)
#magenta=$(tput setaf 5)
#cyan=$(tput setaf 6)
#white=$(tput setaf 7)

# Print "Hello World" in bold, blink, and different colors
#echo "${bold}${blink}${red}Hello World${reset}"
#echo "${bold}${green}Hello World${reset}"
#echo "${bold}${yellow}Hello World${reset}"
#echo "${bold}${blue}Hello World${reset}"
#echo "${bold}${magenta}Hello World${reset}"
#echo "${bold}${cyan}Hello World${reset}"
#echo "${bold}${white}Hello World${reset}"

#-------------------------------- file -------------------------------------------------
file=$(ls [^d-p]*)
echo ${file[@]}
#------------------------------------ diff command------------------------------------------
#diff command
##cat>students.txt
#cat students.txt
#echo
#cat names.txt
#echo ------------------
#diff names.txt students.txt
#echo ---------------------------
#sort students.txt | uniq  
#ls | diff -u - <(ls -al
#--------------------------------------- grep command --------------------------------------------- 
#names.txt contains CSE student first names, one per line.We are interested in students whose names contain a capital “B", such
#as “Bart".• Find out of how names containing “B" are in the file.• Then figure out how many characters long the name of the last student
#whose name contains “B" is when looking at the names alphabetically 

#grep B cse.txt | wc -l
#grep B cse.txt | sort | head -n 1 |tr -d '\n' | wc -c
#awk 'NR == FNR { lines++ } END { print int(lines/2) + 1 }' cse.txt | xargs -I {} sed -n "{}p" cse.txt

