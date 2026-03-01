#!/bin/bash

LOG_FILE="/var/log/app.log"
THRESHOLD=50

ERROR_COUNT=$(grep "ERROR" $LOG_FILE | wc -l)

if [ $ERROR_COUNT -gt $THRESHOLD ]; then
  echo "High error rate detected: $ERROR_COUNT errors"
  mail -s "ALERT: High Errors" admin@example.com <<< "Check logs immediately"
else
  echo "System stable."
fi