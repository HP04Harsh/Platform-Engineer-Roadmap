#!/bin/bash

FILE="/tmp/last_ip.txt"
CURRENT_IP=$(curl -s ifconfig.me)

if [ -f "$FILE" ]; then
    OLD_IP=$(cat $FILE)
    if [ "$CURRENT_IP" != "$OLD_IP" ]; then
        echo "Public IP changed: $CURRENT_IP"
    fi
fi

echo $CURRENT_IP > $FILE