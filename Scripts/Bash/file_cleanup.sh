#!/bin/bash
# Script to clean up files older than a specified number of days in a given directory

# Directory to clean
TARGET_DIR="$1"
# Days threshold
DAYS="$2"

if [[ -z "$TARGET_DIR" || -z "$DAYS" ]]; then
  echo "Usage: $0 <directory> <days>"
  exit 1
fi

if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Error: Directory $TARGET_DIR does not exist."
  exit 2
fi

# Find and delete files older than DAYS
find "$TARGET_DIR" -type f -mtime +$DAYS -print -delete

if [[ $? -eq 0 ]]; then
  echo "Cleanup successful: Files older than $DAYS days removed from $TARGET_DIR."
else
  echo "Cleanup encountered errors."
fi
