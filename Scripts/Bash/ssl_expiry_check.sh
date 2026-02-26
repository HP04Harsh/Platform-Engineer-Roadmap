#!/bin/bash

DOMAIN=$1
THRESHOLD=15

expiry_date=$(echo | openssl s_client -servername $DOMAIN -connect $DOMAIN:443 2>/dev/null \
| openssl x509 -noout -enddate | cut -d= -f2)

expiry_epoch=$(date -d "$expiry_date" +%s)
current_epoch=$(date +%s)

days_left=$(( (expiry_epoch - current_epoch) / 86400 ))

echo "Domain: $DOMAIN"
echo "Days Left: $days_left"

if [ $days_left -lt $THRESHOLD ]; then
    echo "⚠ SSL Certificate expiring soon!"
fi