#!/bin/bash

DB_NAME=$1
BACKUP_DIR="/backup/mysql"
DATE=$(date +%F)

mkdir -p $BACKUP_DIR

mysqldump -u root -p $DB_NAME > $BACKUP_DIR/${DB_NAME}_$DATE.sql

find $BACKUP_DIR -type f -mtime +7 -delete

echo "Backup completed."