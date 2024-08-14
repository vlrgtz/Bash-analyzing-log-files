#!/bin/bash

# Path to the authentication log file
LOG_FILE="/var/log/auth_log.log"

# Path to the output file for suspicious activity
OUTPUT_FILE="/var/log/suspicious_activity.log"

# List of keywords to search for
KEYWORDS=("Failed password" "invalid user" "authentication failure" "error")

# Clear or create the suspicious activity log file
> "$OUTPUT_FILE"

# Read the log file line by line
while IFS= read -r line; do
    # Check each line against each keyword
    for keyword in "${KEYWORDS[@]}"; do
        # If a keyword is found, write the line to the suspicious activity log
        if [[ "$line" == *"$keyword"* ]]; then
            echo "$line" >> "$OUTPUT_FILE"
        fi
    done
done < "$LOG_FILE"
