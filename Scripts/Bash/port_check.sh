#!/bin/bash

read -p "Enter port number: " port

if ss -tuln | grep -q ":$port "; then
    echo "Port $port is OPEN ✅"
else
    echo "Port $port is CLOSED ❌"
fi