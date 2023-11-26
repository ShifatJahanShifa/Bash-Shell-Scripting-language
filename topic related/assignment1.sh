#! /usr/bin/bash

ORG_DIR=$(pwd)

#creating recycle bin directory if it doesn't exist
BIN_DIR="$HOME/RecycleBin"
if [ ! -d $BIN_DIR ] 
then 
    mkdir $BIN_DIR
fi

#to remove a file
remv () {
    local fileName=$1
    if [ ! -f $fileName ] 
    then 
        echo "file doesn't exist"
    elif [ -f $fileName ] 
    then
        mv $fileName $BIN_DIR
        echo "removed file"
    elif [ $fileName -eq "*" ] 
    then
        echo "not yet" 
        files=$(find . -type f -or -type d) 

        for item in $files 
        do
            if [ -d $item ] 
            then 
                mv $item $BIN_DIR
            else 
                mv $item $BIN_DIR
            fi
        done
    fi 
} 

restore () {
    local fileName=$1
    if [ ! -f $BIN_DIR/$fileName ] 
    then 
        echo "$fileName does not in $BIN_DIR"
    elif [ -f $BIN_DIR/$fileName ]
    then
        mv $BIN_DIR/$fileName $ORG_DIR 
        echo "file is  restored" 
    elif [ $fileName -eq "*" ] 
    then
        files=$(find . -type f -or -type d) 

        for item in $files 
        do
            if [ -d $item ] 
            then 
                mv $BIN_DIR/$fileName $ORG_DIR
            else 
                mv $BIN_DIR/$fileName $ORG_DIR
            fi
        done
    fi
}

remvp () {
    local fileName=$1
    if [ ! -f $BIN_DIR/$fileName ] 
    then 
        echo "$fileName does not exist in $BIN_DIR"
    else 
        cd $BIN_DIR
        rm $fileName
        cd $ORG_DIR 
        echo "removed permanently"
    fi
} 

scheduleRemoval () {
    #time=$hour*3600
    local fileName=$1 
    if [ $fileName -eq "*" ] 
    then 
        files=$(find . -type f -or -type d) 

        for item in $files 
        do
            if [ -d $item ] 
            then 
                remvp $item
            else 
                remvp $item
            fi
        done 
    else 
        remvp $fileName  
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
        remvp ${args[1]} ;; 

    "scheduleRemoval" )
        echo -e "how much hour after you want to remove?: \c"
        read hour
        sleep $hour
        for (( i=1; i<$n; i++ )) 
        do
            scheduleRemoval ${args[i]} 
        done
        ;;
         

    * )
        echo "unknown command"
esac