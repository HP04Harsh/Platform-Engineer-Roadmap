#!/bin/bash

# --------------------------------------------
# File: process_watchdog.sh
# Description: Restart service if not running
# Usage: ./process_watchdog.sh nginx
# --------------------------------------------

SERVICE=$1
LOG_FILE="watchdog.log"

if [[ -z "$SERVICE" ]]; then
    echo "Usage: $0 <service_name>"
    exit 1
fi

if systemctl is-active --quiet "$SERVICE"; then
    echo "$(date) - $SERVICE is running." >> "$LOG_FILE"
else
    echo "$(date) - $SERVICE is down. Restarting..." >> "$LOG_FILE"
    systemctl restart "$SERVICE"

    if systemctl is-active --quiet "$SERVICE"; then
        echo "$(date) - $SERVICE restarted successfully." >> "$LOG_FILE"
    else
        echo "$(date) - Failed to restart $SERVICE." >> "$LOG_FILE"
        exit 1
    fi
fi