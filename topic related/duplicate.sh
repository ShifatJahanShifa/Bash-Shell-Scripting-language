#! /usr/bin/bash

#ORG_DIR1=$(pwd)
ORG_DIR="$HOME/test"

#creating recycle bin directory if it doesn't exist

BIN_DIR="$HOME/RecycleBin"
if [ ! -d $BIN_DIR ] 
then 
    mkdir $BIN_DIR
fi

echo "$ORG_DIR"



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
    else echo "not exist"
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



#to remove permanently
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
    local fileName=$1 

    if [ -f $fileName ] 
    then 
        mv $fileName $BIN_DIR
        echo "removed file"
    elif [ -d $fileName ] 
    then
        mv $fileName $BIN_DIR
        echo "removed file"
    else echo "file doesn't exist"
    fi 
}


#taking argument and storing them in an array
args=("$@")
n=${#args[@]}
echo $n
echo ${args[@]}
echo ${!args[@]}

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
            echo "hji"
        done
        ;;

    "scheduleRemoval" )
        echo -e "After how much minutes you want to remove?: \c"
        read sec
        sleep $sec

        for (( i=1; i<$n; i++ )) 
        do
            scheduleRemoval ${args[i]} 
        done
        ;;
         
    * )
        echo "unknown command"
esac