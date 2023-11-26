#! /usr/bin/bash

ORG_DIR="$(pwd)"
DIR="$HOME/CTF"
cd $DIR
# Get the current date
current_date=$(date +%Y-%m-%d)
echo $current_date

# Find all files that are 30 days old or older
old_files=$(find . -type f -mtime +20)

# Loop through the list of old files and delete them
for file in $old_files; do
  echo " file $file"
  rm $file
done

cd $ORG_DIR
