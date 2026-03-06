#!/bin/bash

echo "🎯 Focus Mode"
echo "Pick mission:"
echo "1) Code"
echo "2) Learn"
echo "3) Fix Bugs"

read mission

start=$(date +%s)

case $mission in
1) echo "Mission: Build something cool";;
2) echo "Mission: Learn something new";;
3) echo "Mission: Kill bugs";;
*) echo "Random mission activated";;
esac

echo "Timer started..."

sleep 1500   # 25 min

end=$(date +%s)
time=$(( (end-start)/60 ))

echo "✔ Session complete ($time min)"
echo "Reward: Coffee ☕"