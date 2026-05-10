#!/bin/bash
LOG_DIR="./var"
DAYS=7

echo "Cleaning logs older than $DAYS days in $LOG_DIR..."
find $LOG_DIR -type f -name "*.log" -mtime +0 -exec rm -f {} \;

echo "Log cleanup complete."