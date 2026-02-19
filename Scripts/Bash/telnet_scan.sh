#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./telnet_scan.sh <target_ip>"
    exit 1
fi

TARGET=$1

echo "----------------------------------"
echo "Scanning Telnet (Port 23)"
echo "Target: $TARGET"
echo "----------------------------------"

# Run silent scan
nmap -p 23 --open $TARGET > /tmp/telnet_scan.txt 2>/dev/null

if grep -q "23/tcp open" /tmp/telnet_scan.txt; then
    echo "[+] Telnet (Port 23) is OPEN on $TARGET"
else
    echo "[-] Telnet (Port 23) is NOT open on $TARGET"
fi

# Cleanup
rm -f /tmp/telnet_scan.txt
