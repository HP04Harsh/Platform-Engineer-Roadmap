#!/bin/bash

# ==========================================
# File: log_cleaner.sh
# Purpose: Delete log files older than 7 days
# ==========================================

# Directory containing logs
LOG_DIR="/var/log"

echo "====================================="
echo "      OLD LOG CLEANER SCRIPT         "
echo "====================================="

# Find and delete .log files older than 7 days
echo "Searching for old log files..."

find $LOG_DIR -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo "Old log files deleted successfully ✅"
echo "Cleanup Completed!"