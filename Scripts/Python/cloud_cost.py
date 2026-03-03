def estimate(cpu, ram, storage):
    cost = (cpu * 10) + (ram * 5) + (storage * 0.1)
    return cost

print("Estimated Monthly Cost:", estimate(4, 16, 200))