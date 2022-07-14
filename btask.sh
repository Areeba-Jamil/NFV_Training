#!/bin/sh

# Input file
FILE=/home/areeba/Desktop/NFV_Training/
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
    echo "You have a new mail, check your inbox"
echo -e "A file in the directory named, test_folder has been changed found at location, $FILE " | mail -s "The file has been changed on $(hostname -s)" root
else
    echo "No change in directory files"
fi
