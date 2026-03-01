import json

with open('terraform.tfstate') as f:
    data = json.load(f)

for resource in data['resources']:
    print(f"Resource: {resource['type']} - {resource['name']}")