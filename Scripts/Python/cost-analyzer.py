import csv

with open('azure_cost.csv') as file:
    reader = csv.DictReader(file)
    for row in reader:
        if float(row['Cost']) > 1000:
            print(f"High cost alert: {row['Resource']} - ${row['Cost']}")