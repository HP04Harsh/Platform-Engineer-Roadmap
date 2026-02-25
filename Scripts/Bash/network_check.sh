#!/bin/bash

echo "Checking internet connectivity..."

ping -c 4 8.8.8.8 > /dev/null

if [ $? -eq 0 ]; then
    echo "Internet is working ✅"
else
    echo "Internet is NOT working ❌"
fi