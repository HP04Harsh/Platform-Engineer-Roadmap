"""
File: api_health_dashboard.py
Description: Monitor APIs and generate JSON health report
"""

import requests
import json
import sys
from datetime import datetime

API_LIST = [
    "https://api.github.com",
    "https://jsonplaceholder.typicode.com/posts"
]

report = {
    "timestamp": str(datetime.now()),
    "results": []
}

failed = False

for url in API_LIST:
    try:
        response = requests.get(url, timeout=5)
        status = response.status_code
        report["results"].append({
            "url": url,
            "status": status
        })

        if status != 200:
            failed = True

    except requests.RequestException as e:
        report["results"].append({
            "url": url,
            "status": "ERROR",
            "error": str(e)
        })
        failed = True

with open("api_report.json", "w") as f:
    json.dump(report, f, indent=4)

print("Report generated: api_report.json")

if failed:
    sys.exit(1)
else:
    sys.exit(0)