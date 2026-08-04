#!/bin/bash

# Define border and color variables for formatting
BORDER="----------------------------------------------------------------------"
HEADER_FORMAT="%-22s | %-8s | %-8s | %-8s | %-6s | %-s\n"
ROW_FORMAT="%-22s | %-8s | %-8s | %-8s | %-6s | %-s\n"

# Print Table Header
echo "$BORDER"
printf "$HEADER_FORMAT" "Filesystem" "Size" "Used" "Avail" "Use%" "Mounted on"
echo "$BORDER"

# Read df output line by line, skipping the first line (header)
df -h | grep -v '^Filesystem' | while read -r line; do
    # Extract fields from the df command output
    filesystem=$(echo "$line" | awk '{print $1}')
    size=$(echo "$line" | awk '{print $2}')
    used=$(echo "$line" | awk '{print $3}')
    avail=$(echo "$line" | awk '{print $4}')
    use_pct=$(echo "$line" | awk '{print $5}')
    mounted=$(echo "$line" | awk '{print $6}')

    # Print the formatted row
    printf "$ROW_FORMAT" "$filesystem" "$size" "$used" "$avail" "$use_pct" "$mounted"
done

# Print Table Footer
echo "$BORDER"

