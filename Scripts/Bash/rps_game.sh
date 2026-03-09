#!/bin/bash

choices=("rock" "paper" "scissors")

computer=${choices[$RANDOM % 3]}

echo "Choose: rock, paper, scissors"
read user

echo "Computer chose: $computer"

if [ "$user" == "$computer" ]
then
echo "Draw!"
elif [[ "$user" == "rock" && "$computer" == "scissors" ]] ||
     [[ "$user" == "paper" && "$computer" == "rock" ]] ||
     [[ "$user" == "scissors" && "$computer" == "paper" ]]
then
echo "You Win!"
else
echo "Computer Wins!"
fi