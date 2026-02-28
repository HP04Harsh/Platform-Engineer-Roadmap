#!/bin/bash

SOURCE="/var/www"
DEST="/backups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p $DEST

tar -czf $DEST/backup_$DATE.tar.gz $SOURCE

# Keep only last 7 backups
ls -tp $DEST/*.tar.gz | grep -v '/$' | tail -n +8 | xargs -I {} rm -- {}

echo "Backup completed successfully."