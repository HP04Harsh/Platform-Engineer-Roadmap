#!/bin/bash

echo "===== SYSTEM UPDATE STARTED ====="

sudo apt update && sudo apt upgrade -y

if [ $? -eq 0 ]; then
    echo "System updated successfully ✅"
else
    echo "Update failed ❌"
fi

echo "===== UPDATE COMPLETE ====="