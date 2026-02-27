#!/bin/bash
# Filter CSV rows by column value

CSV_FILE="$1"
COL_NUM="$2"
FILTER_VAL="$3"

if [[ -z "$CSV_FILE" || -z "$COL_NUM" || -z "$FILTER_VAL" ]]; then
  echo "Usage: $0 <csv_file> <column_number> <filter_value>"
  exit 1
fi

if [[ ! -f "$CSV_FILE" ]]; then
  echo "CSV file $CSV_FILE not found."
  exit 2
fi

awk -F',' -v col="$COL_NUM" -v val="$FILTER_VAL" '$col == val' "$CSV_FILE"
