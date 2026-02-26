#!/bin/bash
# Backup script for directories compressing with date tagged file

SOURCE_DIR="$1"
BACKUP_DIR="$2"

if [[ -z "$SOURCE_DIR" || -z "$BACKUP_DIR" ]]; then
  echo "Usage: $0 <source_directory> <backup_directory>"
  exit 1
fi

if [[ ! -d "$SOURCE_DIR" ]]; then
  echo "Source directory $SOURCE_DIR does not exist."
  exit 2
fi

mkdir -p "$BACKUP_DIR"
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$(basename "$SOURCE_DIR")_$DATE.tar.gz"

# Create the compressed backup
if tar czf "$BACKUP_FILE" -C "$SOURCE_DIR" .; then
  echo "Backup successful: $BACKUP_FILE"
else
  echo "Backup failed."
  exit 3
fi
