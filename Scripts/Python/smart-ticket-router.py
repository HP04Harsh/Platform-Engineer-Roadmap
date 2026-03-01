tickets = [
    "VM is down",
    "Password reset required",
    "Database latency issue"
]

for ticket in tickets:
    if "VM" in ticket:
        print("Assign to Cloud Team")
    elif "Password" in ticket:
        print("Assign to IT Support")
    elif "Database" in ticket:
        print("Assign to DBA Team")