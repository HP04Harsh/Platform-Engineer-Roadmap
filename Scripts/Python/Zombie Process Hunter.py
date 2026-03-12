import psutil

print("⚔️ Zombie Process Hunter")

for proc in psutil.process_iter(['pid', 'name', 'cpu_percent']):
    try:
        if proc.info['cpu_percent'] > 50:
            print(f"🔥 Killing {proc.info['name']} (PID {proc.info['pid']})")
            proc.kill()
    except:
        pass