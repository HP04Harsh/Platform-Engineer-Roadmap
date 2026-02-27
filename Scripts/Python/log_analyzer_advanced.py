import re
from collections import Counter

log_file = "/var/log/auth.log"

pattern = r"Failed password.*from (\d+\.\d+\.\d+\.\d+)"

ips = []

with open(log_file, "r", errors="ignore") as file:
    for line in file:
        match = re.search(pattern, line)
        if match:
            ips.append(match.group(1))

counter = Counter(ips)

print("Top Failed Login IPs:")
for ip, count in counter.most_common(5):
    print(f"{ip} -> {count} attempts")