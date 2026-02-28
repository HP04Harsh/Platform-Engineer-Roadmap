#!/bin/bash

SERVICE="nginx"

if pgrep $SERVICE > /dev/null
then
    echo "$SERVICE is running."
else
    echo "$SERVICE not running. Restarting..."
    systemctl restart $SERVICE
fi