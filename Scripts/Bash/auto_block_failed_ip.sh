#!/bin/bash

LOG="/var/log/auth.log"

grep "Failed password" $LOG | awk '{print $(NF-3)}' | sort | uniq -c | while read count ip
do
    if [ $count -gt 10 ]; then
        echo "Blocking IP: $ip"
        sudo iptables -A INPUT -s $ip -j DROP
    fi
done