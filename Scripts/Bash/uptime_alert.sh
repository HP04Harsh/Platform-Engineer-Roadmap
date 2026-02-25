#!/bin/bash

uptime_days=$(awk '{print int($1)}' /proc/uptime)

if [ "$uptime_days" -gt 30 ]; then
    echo "System has been running for more than 30 days!"
else
    echo "System uptime is normal."
fi