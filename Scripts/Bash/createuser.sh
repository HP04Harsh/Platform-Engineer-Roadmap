#!/bin/bash

#Script should execute with sudo/root permission
if [["${UID}" -ne 0]]
then 
    echo "Please run with sudo or root user"
    exit 1
fi

#Check is argument is given or not
if [[${#} -lt 1]]
then 
   echo "Usage: ${0} USERNAME [COMMENT]"
   echo "Create a user with name USER_NAME and COMMENT"
   exit 1
fi

#Store 1st argument as username
USER_NAME="${1}"
echo $USER_NAME

#In case of more than one argument
SHIFT
COMMENT="${@}"
echo $COMMENT

#Create a Password
PASSWORD = $(date +%s%N)
echo $PASSWORD

#Create the USer
useradd -c "${COMMENT}" -m $USER_NAME

#Check is user is succesfully created or not
if [[$? -ne 0]]
then 
   echo "The account could not be created"
   exit 1
fi

#Set the password for the user
passwd $PASSWORD $USER_NAME

#Check if password is succesfully set or not
if [[$? -ne 0]]
then 
   echo "The passwd could not be created"
   exit 1
fi

#Force password change on first login
passwd -e $USER_NAME

#Display all user info
echo "=========USER INFO=========="
echo "$USER_NAME"
echo "$PASSWORD"