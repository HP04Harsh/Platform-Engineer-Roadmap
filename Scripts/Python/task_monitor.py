import random

tasks = [
"Scripted a deployment",
"Automated log cleanup",
"Reduced manual clicks",
"Created reusable module",
"Optimized pipeline"
]

points = 0

print("⚡ Automation Game\n")

for t in tasks:
    done = input(f"{t}? (y/n): ")
    if done.lower() == "y":
        points += random.randint(5,15)

print("\nScore:", points)

if points > 40:
    print("Automation Wizard 🧙")
elif points > 20:
    print("Good progress 🚀")
else:
    print("Still manual mode 😅")