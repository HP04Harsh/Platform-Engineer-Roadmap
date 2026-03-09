#!/bin/bash

number=$(( RANDOM % 10 + 1 ))

echo "Guess number between 1 and 10"

while true
do
read guess

if [ $guess -lt $number ]
then
echo "Too low"
elif [ $guess -gt $number ]
then
echo "Too high"
else
echo "Correct!"
break
fi

done