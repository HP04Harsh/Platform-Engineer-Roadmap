import shutil
import json

usage = shutil.disk_usage("/")

report = {
    "total_gb": round(usage.total / (1024**3), 2),
    "used_gb": round(usage.used / (1024**3), 2),
    "free_gb": round(usage.free / (1024**3), 2)
}

print(json.dumps(report, indent=4))