# flipbits_quest.py
# Gamified bit flip challenge

def bitwise_complement(n):
    if n == 0:
        return 1
    
    mask = (1 << n.bit_length()) - 1
    return n ^ mask


if __name__ == "__main__":
    n = int(input("🎯 Enter your number: "))
    result = bitwise_complement(n)
    print("🪄 Complement unlocked:", result)