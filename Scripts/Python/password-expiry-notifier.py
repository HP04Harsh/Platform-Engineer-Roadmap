users = {
    "harsh": 5,
    "amit": 15
}

for user, days_left in users.items():
    if days_left < 7:
        print(f"Notify {user}: Password expires in {days_left} days.")