#!/bin/bash

echo "===== User Activity Report ====="
echo "Currently Logged In Users:"
who

echo ""
echo "Last 10 Logins:"
last -n 10

echo ""
echo "Users with UID >= 1000:"
awk -F: '$3 >= 1000 {print $1}' /etc/passwd