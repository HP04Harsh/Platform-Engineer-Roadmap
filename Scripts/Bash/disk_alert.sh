#!/bin/bash

THRESHOLD=80

usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ $usage -gt $THRESHOLD ]; then
    echo "⚠ WARNING: Disk usage is above $THRESHOLD% (Current: $usage%)"
else
    echo "Disk usage is normal (Current: $usage%)"
fi