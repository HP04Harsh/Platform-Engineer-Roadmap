import random
import string

password = ''.join(random.choice(string.ascii_lowercase) for _ in range(4))

print("🧑‍💻 Hacker Password Crack Game")
print("Guess the 4-letter password")

attempts = 5

while attempts > 0:
    guess = input("Enter guess: ")

    if guess == password:
        print("🔓 Access Granted!")
        break
    else:
        correct = sum([1 for a,b in zip(guess,password) if a==b])
        print(f"❌ Wrong! {correct} letters correct position")
        attempts -= 1
        print("Attempts left:", attempts)

if attempts == 0:
    print("💀 Access Denied. Password was:", password)