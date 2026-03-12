#!/bin/bash
echo "⚔️ Zombie Process Hunter"

ps -eo pid,comm,%cpu --sort=-%cpu | awk '$3>50 {print $1}' | while read pid
do
  echo "🔥 Killing process $pid"
  kill -9 $pid
done