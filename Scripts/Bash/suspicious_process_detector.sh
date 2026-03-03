#!/bin/bash

echo "Checking suspicious processes..."

ps -eo pid,comm,%cpu --sort=-%cpu | head -n 10 | while read pid name cpu
do
    if (( $(echo "$cpu > 70.0" | bc -l) )); then
        echo "High CPU Process: $name (PID: $pid)"
    fi
done