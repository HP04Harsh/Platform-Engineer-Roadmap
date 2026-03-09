password = "python123"

print("🔐 Guess the password")

attempts = 3

while attempts > 0:
    guess = input("Enter password: ")

    if guess == password:
        print("Access Granted 🎉")
        break
    else:
        attempts -= 1
        print("Wrong password. Attempts left:", attempts)

if attempts == 0:
    print("Access Denied ❌")