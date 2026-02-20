#!/bin/bash

echo "===== SYSTEM INFORMATION ====="
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo "Date & Time: $(date)"
echo "Uptime: $(uptime -p)"
echo ""
echo "===== MEMORY USAGE ====="
free -h
echo ""
echo "===== DISK USAGE ====="
df -h
echo ""
echo "===== CPU INFO ====="
lscpu | grep "Model name"