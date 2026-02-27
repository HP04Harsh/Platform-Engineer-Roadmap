import psutil
import time

while True:
    cpu = psutil.cpu_percent()
    memory = psutil.virtual_memory().percent
    disk = psutil.disk_usage('/').percent

    print(f"CPU: {cpu}% | RAM: {memory}% | Disk: {disk}%")

    if cpu > 80:
        print("⚠ High CPU Usage!")

    time.sleep(5)