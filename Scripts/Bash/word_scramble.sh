#!/bin/bash

words=("python" "cloud" "azure" "devops" "linux")

word=${words[$RANDOM % ${#words[@]}]}

scrambled=$(echo $word | fold -w1 | shuf | tr -d '\n')

echo "Guess the word"
echo "Scrambled: $scrambled"

read -p "Your guess: " guess

if [ "$guess" == "$word" ]; then
    echo "Correct! 🎉"
else
    echo "Wrong! Word was: $word"
fi