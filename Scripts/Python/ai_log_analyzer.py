from collections import Counter
import re

errors = []

with open("app.log") as f:
    for line in f:
        if "ERROR" in line:
            cleaned = re.sub(r'\d+', '', line)
            errors.append(cleaned.strip())

top = Counter(errors)
print(top.most_common(5))