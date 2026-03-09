#!/bin/bash

echo "Rolling Dice..."

dice=$(( RANDOM % 6 + 1 ))

echo "You got: $dice"

if [ $dice -eq 6 ]
then
echo "🎉 Jackpot!"
else
echo "Try again!"
fi