import docker

client = docker.from_env()

for container in client.containers.list():
    stats = container.stats(stream=False)
    cpu_usage = stats["cpu_stats"]["cpu_usage"]["total_usage"]

    print(f"{container.name} CPU usage: {cpu_usage}")