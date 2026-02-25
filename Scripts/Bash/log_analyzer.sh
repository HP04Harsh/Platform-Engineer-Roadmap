#!/bin/bash

read -p "Enter log file path: " logfile

echo "Analyzing $logfile..."
echo "ERROR count: $(grep -c "ERROR" $logfile)"
echo "WARNING count: $(grep -c "WARNING" $logfile)"
echo "INFO count: $(grep -c "INFO" $logfile)"