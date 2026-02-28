import psutil

cpu = psutil.cpu_percent(interval=1)
memory = psutil.virtual_memory()

print(f"CPU Usage: {cpu}%")
print(f"Memory Usage: {memory.percent}%")