#!/bin/bash

read -p "Enter process name to kill: " pname

pid=$(pgrep $pname)

if [ -z "$pid" ]; then
    echo "Process not found!"
else
    echo "Killing process $pname (PID: $pid)"
    kill -9 $pid
    echo "Process killed."
fi