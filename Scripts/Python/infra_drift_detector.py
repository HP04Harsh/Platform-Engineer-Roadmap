import json
from deepdiff import DeepDiff

with open("baseline.json") as f1, open("current.json") as f2:
    baseline = json.load(f1)
    current = json.load(f2)

diff = DeepDiff(baseline, current)
print(diff)