import random

quests = [
"Write a bash script to clean temp files",
"Automate a small API call",
"Refactor an old script",
"Write a terraform module",
"Document one automation"
]

xp = random.randint(10,50)

print("🕹 Dev Quest Generator\n")

quest = random.choice(quests)

print("Today's Quest:")
print(quest)

input("\nPress Enter when done...")

print(f"\nXP earned: {xp}")
print("Keep shipping ⚡")