# ==========================================
# File: expense_tracker.py
# Purpose: Track daily expenses
# ==========================================

expenses = []

print("=====================================")
print("         DAILY EXPENSE TRACKER       ")
print("=====================================")

while True:
    amount = input("Enter expense amount (or type 'done'): ")

    if amount.lower() == "done":
        break

    try:
        expenses.append(float(amount))
    except ValueError:
        print("Invalid input. Please enter a number.")

# Calculate total
total = sum(expenses)

print("-------------------------------------")
print(f"Total Expenses: ₹{total}")
print("Thank you for using Expense Tracker ✅")