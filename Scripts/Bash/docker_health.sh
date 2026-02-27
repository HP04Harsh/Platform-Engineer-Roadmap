#!/bin/bash

for container in $(docker ps -q); do
    STATUS=$(docker inspect --format='{{.State.Health.Status}}' $container 2>/dev/null)
    
    if [ "$STATUS" == "unhealthy" ]; then
        echo "Restarting unhealthy container: $container"
        docker restart $container
    fi
done