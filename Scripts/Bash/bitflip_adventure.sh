#!/bin/bash
# bitflip_adventure.sh
# Flip bits like a command-line hero

read -p "🎯 Enter a number: " n

if [ "$n" -eq 0 ]; then
    echo "🪄 Complement unlocked: 1"
    exit
fi

bits=$(echo "obase=2;$n" | bc | wc -c)
bits=$((bits-1))

mask=$(( (1 << bits) - 1 ))
result=$(( n ^ mask ))

echo "🪄 Complement unlocked: $result"