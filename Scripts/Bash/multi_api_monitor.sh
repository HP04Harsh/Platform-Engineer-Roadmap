#!/bin/bash

# --------------------------------------------
# File: multi_api_monitor.sh
# Description: Monitor multiple APIs and log status
# Usage: ./multi_api_monitor.sh urls.txt
# --------------------------------------------

LOG_FILE="api_monitor.log"
FAILED=0

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <file_with_urls>"
    exit 1
fi

URL_FILE=$1

if [[ ! -f "$URL_FILE" ]]; then
    echo "URL file not found!"
    exit 1
fi

echo "===== API Health Check - $(date) =====" >> "$LOG_FILE"

while read -r URL; do
    response=$(curl -o /dev/null -s -w "%{http_code} %{time_total}" "$URL")
    read -r status time <<< "$response"

    if [[ "$status" -eq 200 ]]; then
        echo "[OK] $URL | Status: $status | Time: ${time}s" | tee -a "$LOG_FILE"
    else
        echo "[FAIL] $URL | Status: $status" | tee -a "$LOG_FILE"
        FAILED=1
    fi
done < "$URL_FILE"

echo "" >> "$LOG_FILE"

exit $FAILED