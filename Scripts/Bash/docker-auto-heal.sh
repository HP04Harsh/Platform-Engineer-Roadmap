#!/bin/bash

CONTAINERS=$(docker ps --filter "health=unhealthy" --format "{{.Names}}")

for container in $CONTAINERS
do
  echo "Restarting $container..."
  docker restart $container
done

echo "Auto-heal check completed."