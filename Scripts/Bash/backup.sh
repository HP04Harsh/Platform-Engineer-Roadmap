#!/bin/bash

read -p "Enter folder path to backup: " folder

if [ ! -d "$folder" ]; then
    echo "Folder does not exist!"
    exit 1
fi

backup_name="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf $backup_name $folder

echo "Backup created successfully: $backup_name"