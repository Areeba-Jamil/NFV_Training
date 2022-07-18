#!/bin/sh

# Input file
FILE=/home/areeba/Desktop/test_folder/
# How many seconds before file is deemed "older"
OLDTIME=180
# Get current and file times
CURTIME=$(date +%s)
FILETIME=$(stat $FILE -c %Y) 
TIMEDIFF=$(expr $CURTIME - $FILETIME)

# Check if file older
if [ $TIMEDIFF -le $OLDTIME ];
 then
   # for -ge --- echo "File is older, do stuff here"
   # The file was changed, so:
    nodejs indexx.js
else
    echo "No change in directory files"
fi

