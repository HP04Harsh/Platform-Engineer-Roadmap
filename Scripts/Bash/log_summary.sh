#!/bin/bash
# Script to summarize unique log message counts from a log file

LOG_FILE="$1"

if [[ -z "$LOG_FILE" ]]; then
  echo "Usage: $0 <log_file>"
  exit 1
fi

if [[ ! -f "$LOG_FILE" ]]; then
  echo "Error: Log file $LOG_FILE not found."
  exit 2
fi

# Extract log messages after timestamp and count unique
awk '{ $1=""; $2=""; print $0 }' "$LOG_FILE" | sort | uniq -c | sort -nr
