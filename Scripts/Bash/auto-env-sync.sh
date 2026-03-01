#!/bin/bash

SOURCE_ENV="dev.env"
TARGET_SERVERS=("user@server1" "user@server2")
REMOTE_PATH="/var/www/app/.env"

for SERVER in "${TARGET_SERVERS[@]}"
do
  echo "Syncing to $SERVER..."
  scp $SOURCE_ENV $SERVER:$REMOTE_PATH
  ssh $SERVER "echo 'Updated on $(date)' >> /var/www/app/deploy.log"
done

echo "Environment sync completed."