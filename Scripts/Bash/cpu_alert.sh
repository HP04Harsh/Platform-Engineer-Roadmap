#!/bin/bash

THRESHOLD=80
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)

if [ "$CPU_USAGE" -gt "$THRESHOLD" ]; then
    echo "High CPU Usage Alert: $CPU_USAGE%"
else
    echo "CPU Usage Normal: $CPU_USAGE%"
fi