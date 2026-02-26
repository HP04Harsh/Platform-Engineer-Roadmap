#!/bin/bash

echo "Cleaning stopped containers..."
docker container prune -f

echo "Cleaning unused images..."
docker image prune -a -f

echo "Docker system usage after cleanup:"
docker system df