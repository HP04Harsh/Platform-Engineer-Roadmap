#!/bin/bash

LOG_DIR="/var/log"
DAYS=7

echo "Cleaning logs older than $DAYS days..."

sudo find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Old logs deleted ✅"