#!/bin/bash
#$Revision:001$
#Date

#Variables
BASE="/home/root"
DAYS=10
DEPTH=1
RUN=0

#Check if the directory is present or not
if [! -d $BASE]
then
    echo "Directory does not exisit:$BASE"
    exit 1
fi

#Create 'archive' folder if not present
if [! -d $BASE/archive]
then 
    mkdir -p $BASE/archive
fi

#find the list of files larger than 20MB
for i in 'find $BASE -maxdepth $DEPTH -type f size +20MB'
do
  if [$RUN -eq 0]
  then 
    gzip $i || exit 1
    mv $i.gz $BASE/archive || exit 1
  fi

done