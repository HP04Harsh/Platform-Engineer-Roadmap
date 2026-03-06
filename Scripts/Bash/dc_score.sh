#!/bin/bash

score=0

echo "⚙ Dev Environment Check"

check_tool () {
  if command -v $1 >/dev/null 2>&1; then
    echo "✔ $1 installed"
    ((score+=10))
  else
    echo "✖ $1 missing"
  fi
}

check_tool git
check_tool docker
check_tool node
check_tool python3
check_tool terraform

echo "--------------------"
echo "🏆 Score: $score / 50"

if [ $score -eq 50 ]; then
  echo "Legendary Dev Setup 🚀"
elif [ $score -ge 30 ]; then
  echo "Good enough 👍"
else
  echo "Needs upgrades ⚡"
fi