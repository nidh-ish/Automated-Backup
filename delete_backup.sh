#!/bin/bash

# Numbers of days before the backup gets deleted
number_of_days=7

# Add path to the backup folder
backup_folder=""

logs_file="$backup_folder/logs.txt"

# Add a new line to the logs file
echo "" >> $logs_file

# Log a message of the backup file being deleted
display1=$(echo "Deleted the backup")

# Log the files being deleted
display2=$(echo $(find $backup_folder -type f -name "*.tar" -mtime +$number_of_days))

# Log the date of the deletion
display3=$(echo "on " $(date +%D))

echo $display1 $display2 $display3 >> $logs_file

echo "" >> $logs_file

# Delete the files
find $backup_folder -type f -name "*.tar" -mtime +$number_of_days -exec rm {} \;
