import random

words = ["python", "cloud", "azure", "devops", "linux"]

word = random.choice(words)
scrambled = "".join(random.sample(word, len(word)))

print("🔤 Guess the correct word")
print("Scrambled word:", scrambled)

guess = input("Your guess: ")

if guess == word:
    print("🎉 Correct!")
else:
    print("❌ Wrong! The word was:", word)