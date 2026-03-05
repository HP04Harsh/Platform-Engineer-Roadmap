import random

print("🎲 Dice Duel Game")
player_score = 0
cpu_score = 0

for round in range(1,6):
    input(f"\nPress Enter to roll dice (Round {round})")

    player = random.randint(1,6)
    cpu = random.randint(1,6)

    print("You rolled:", player)
    print("CPU rolled:", cpu)

    if player > cpu:
        print("You win the round!")
        player_score += 1
    elif cpu > player:
        print("CPU wins the round!")
        cpu_score += 1
    else:
        print("Draw!")

print("\nFinal Score")
print("You:", player_score)
print("CPU:", cpu_score)

if player_score > cpu_score:
    print("🏆 You Win!")
else:
    print("💀 CPU Wins!")