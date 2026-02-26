#!/bin/bash
# Script to check an API endpoint status and response time

API_URL="$1"

if [[ -z "$API_URL" ]]; then
  echo "Usage: $0 <api_url>"
  exit 1
fi

# Perform curl with silent output, show http_code and response time
response=$(curl -o /dev/null -s -w "%{http_code} %{time_total}" "$API_URL")

read -r status time <<< "$response"

if [[ "$status" -eq 200 ]]; then
  echo "API is up. Status: $status, Response time: ${time}s"
else
  echo "API check failed. Status: $status"
fi
