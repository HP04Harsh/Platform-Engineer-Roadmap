#!/bin/bash

echo "===== SYSTEM RESOURCE REPORT ====="
echo "Date: $(date)"
echo ""

echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" 

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Top 5 Memory Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6