#!/bin/bash

clear
echo "🎯 Welcome to Number Hunt Game!"
echo "Guess the number between 1 and 50"

target=$((RANDOM % 50 + 1))
attempts=0

while true
do
    read -p "Enter your guess: " guess
    attempts=$((attempts + 1))

    if [ "$guess" -lt "$target" ]; then
        echo "📉 Too Low!"
    elif [ "$guess" -gt "$target" ]; then
        echo "📈 Too High!"
    else
        echo "🏆 Correct! You guessed in $attempts attempts."
        break
    fi
done