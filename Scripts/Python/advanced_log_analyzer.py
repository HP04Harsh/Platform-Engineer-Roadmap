"""
File: advanced_log_analyzer.py
Description: Analyze access log for errors and suspicious IPs
"""

from collections import Counter

LOG_FILE = "access.log"

ips = []
status_codes = []
endpoints = []

with open(LOG_FILE, "r") as file:
    for line in file:
        parts = line.split()
        if len(parts) > 8:
            ips.append(parts[0])
            status_codes.append(parts[8])
            endpoints.append(parts[6])

ip_counter = Counter(ips)
status_counter = Counter(status_codes)
endpoint_counter = Counter(endpoints)

print("Top 5 IPs:")
print(ip_counter.most_common(5))

print("\nStatus Code Count:")
print(status_counter)

print("\nTop 5 Endpoints:")
print(endpoint_counter.most_common(5))

# Detect suspicious IP (>100 requests)
print("\nSuspicious IPs (>100 requests):")
for ip, count in ip_counter.items():
    if count > 100:
        print(f"{ip} - {count} requests")