#!/bin/bash

player_hp=30
enemy_hp=30

echo "⚔️ Terminal Battle Game"
echo "Defeat the enemy!"

while [ $player_hp -gt 0 ] && [ $enemy_hp -gt 0 ]
do
    echo ""
    echo "Your HP: $player_hp"
    echo "Enemy HP: $enemy_hp"

    echo "Choose attack:"
    echo "1) Sword (5-10 dmg)"
    echo "2) Fireball (8-12 dmg)"

    read -p "Attack: " choice

    if [ $choice -eq 1 ]; then
        dmg=$((RANDOM % 6 + 5))
    else
        dmg=$((RANDOM % 5 + 8))
    fi

    enemy_hp=$((enemy_hp - dmg))
    echo "💥 You dealt $dmg damage!"

    enemy_attack=$((RANDOM % 8 + 3))
    player_hp=$((player_hp - enemy_attack))
    echo "👹 Enemy dealt $enemy_attack damage!"

done

if [ $player_hp -gt 0 ]; then
    echo "🏆 You Win!"
else
    echo "💀 Game Over"
fi