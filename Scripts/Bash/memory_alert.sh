#!/bin/bash

THRESHOLD=80
USAGE=$(free | awk '/Mem/{printf("%.0f"), $3/$2 * 100}')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "WARNING: Memory usage is at $USAGE%"
fi