"""
File: server_monitor.py
Description: Monitor CPU, memory, disk usage using config.yaml
"""

import psutil
import yaml
import sys
from datetime import datetime

LOG_FILE = "server_monitor.log"

def load_config():
    with open("config.yaml", "r") as file:
        return yaml.safe_load(file)

def check_metrics(config):
    cpu = psutil.cpu_percent(interval=1)
    memory = psutil.virtual_memory().percent
    disk = psutil.disk_usage('/').percent

    alerts = []

    if cpu > config["cpu_threshold"]:
        alerts.append(f"CPU usage high: {cpu}%")

    if memory > config["memory_threshold"]:
        alerts.append(f"Memory usage high: {memory}%")

    if disk > config["disk_threshold"]:
        alerts.append(f"Disk usage high: {disk}%")

    return cpu, memory, disk, alerts

def log_result(cpu, memory, disk, alerts):
    with open(LOG_FILE, "a") as f:
        f.write(f"\n=== {datetime.now()} ===\n")
        f.write(f"CPU: {cpu}% | Memory: {memory}% | Disk: {disk}%\n")
        for alert in alerts:
            f.write(f"ALERT: {alert}\n")

def main():
    config = load_config()
    cpu, memory, disk, alerts = check_metrics(config)
    log_result(cpu, memory, disk, alerts)

    if alerts:
        print("⚠ Alerts detected")
        sys.exit(1)
    else:
        print("System healthy")
        sys.exit(0)

if __name__ == "__main__":
    main()


#Please create this file config.yaml
cpu_threshold: 80
memory_threshold: 75
disk_threshold: 85