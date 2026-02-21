#!/bin/bash

FILE="users.txt"

while read user
do
    sudo useradd -m $user
    echo "User $user created ✅"
done < $FILE