#!/bin/bash

THRESHOLD=10
COUNT=$(grep "Failed password" /var/log/auth.log | wc -l)

echo "Failed login attempts: $COUNT"

if [ $COUNT -gt $THRESHOLD ]; then
    echo "⚠ High number of failed SSH login attempts!"
fi