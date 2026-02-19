#!/bin/bash
# Check if IP argument is provided while runnign script

if [ -z "$1" ]; then
    echo "Usage: ./nmap_scan.sh <target_ip>"
    exit 1
fi

TARGET=$1

echo "================================="
echo "  Nmap Scan Script"
echo "  Target: $TARGET"
echo "================================="
echo ""

# Run Nmap service detection scan
echo "[+] Starting Nmap scan..."
nmap -sV $TARGET -oN scan_report.txt

echo ""
echo "[+] Scan completed!"
echo ""
