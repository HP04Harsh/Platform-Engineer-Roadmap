#!/bin/bash

DAYS=30

az group list --query "[].name" -o tsv | while read group
do
  CREATED=$(az group show --name $group --query "properties.provisioningState" -o tsv)
  if [[ "$CREATED" == "Succeeded" ]]; then
    echo "Checking $group"
    # Add logic for date comparison
    echo "Deleting $group"
    az group delete --name $group --yes --no-wait
  fi
done