#! /usr/bin/bash


ORG_DIR="$HOME/test"
DIR="$HOME/CTF"
#creating recycle bin directory if it doesn't exist

BIN_DIR="$HOME/RecycleBin"

if [ ! -d $BIN_DIR ] 
then 
    mkdir $BIN_DIR
fi


#to remove a file
remv () {
    local fileName=$1

    if [ -d $fileName ] 
    then 
        mv $fileName $BIN_DIR
        echo "removed file"
    elif [ -f $fileName ] 
    then
        mv $fileName $BIN_DIR
        echo "removed file"
    else echo "does not exist"
    fi 
} 


#to restore a file
restore () {
    local fileName=$1
    
    if [ -d $BIN_DIR/$fileName ] 
    then 
        mv $BIN_DIR/$fileName $ORG_DIR
        echo "directory is  restored"
    elif [ -f $BIN_DIR/$fileName ]
    then
        mv $BIN_DIR/$fileName $ORG_DIR
        echo "file is  restored"  
    else echo "$fileName does not in $BIN_DIR" 
    fi 
}



remvp () {
    local fileName=$1 

    if [ -f $BIN_DIR/$fileName ] 
    then 
        rm $fileName
        echo "removed permanently"
    elif [ -d $BIN_DIR/$fileName ] 
    then 
        rm $fileName
        echo "removed permanently"
    else 
        echo "$fileName does not exist in $BIN_DIR"
    fi
} 


#schedule removcal in seconds
scheduleRemoval () {
    #time=$hour*3600
   
    cd $BIN_DIR

    current_date=$(date +%Y-%m-%d)
    #echo $current_date

    old_files=$(find . -type f -mtime +20)


    for file in $old_files; do
    #echo " file $file"
    rm $file
    done

    cd $ORG_DIR 
}


#taking argument and storing them in an array
args=("$@")
n=${#args[@]}


case ${args[0]} in 
    "remv" ) 
        #remv "${args[1]}" 
        for (( i=1; i<$n; i++ )) 
        do
            remv ${args[i]} 
        done
        ;;
        
    "restore" )
        #restore ${args[1]} ;; 
        for (( i=1; i<$n; i++ )) 
        do
            restore ${args[i]} 
        done
        ;;

    "remvp" )
        for (( i=1; i<$n; i++ )) 
        do
            remvp ${args[i]} 
        done
        ;;
         
    * )
        echo "unknown command" ;;
esac 

scheduleRemoval 
