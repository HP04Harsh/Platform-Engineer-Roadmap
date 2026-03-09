#!/bin/bash

number=$((RANDOM % 10 + 1))

echo "Guess the number between 1 to 10"

while true
do
read -p "Enter your guess: " guess

if [ $guess -eq $number ]
then
    echo "🎉 Correct! You guessed it!"
    break
elif [ $guess -gt $number ]
then
    echo "Too high!"
else
    echo "Too low!"
fi
done