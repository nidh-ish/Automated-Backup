#!/bin/bash

# Present date
date="`date +%d`_`date +%m`_`date +%Y`"

# Naming the backup with present date
backup_name="backup_$date.tar"

# Path to the backup folder
backup_folder=""

# Provide path to folder to which you need to backup
folder1=""

folder2=""

folder3=""
# More folders can also be added

# Prevent taking any input like Ctrl + C
trap "" SIGINT

# Compress and store the file using tar
tar -cvf $backup_folder/$backup_name $folder1 $folder2 $folder3

# Switch to the backup folder
cd $backup_folder

# List the contents
ls

# Display the size
du -sh

# Add a log stating successful backup of the files
echo "Succesfully backed up $folder1, $folder2, $folder3 on $(date +%D)" >> logs.txt
