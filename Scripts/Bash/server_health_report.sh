#!/bin/bash

REPORT="health_report_$(date +%F).txt"

echo "Server Health Report - $(date)" > $REPORT
echo "----------------------------------" >> $REPORT

echo "CPU Load:" >> $REPORT
uptime >> $REPORT

echo -e "\nMemory Usage:" >> $REPORT
free -h >> $REPORT

echo -e "\nDisk Usage:" >> $REPORT
df -h >> $REPORT

echo -e "\nUptime:" >> $REPORT
uptime -p >> $REPORT

echo "Report saved to $REPORT"