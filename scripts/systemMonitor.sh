#!/bin/bash
echo "===== System Monitor ====="
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo "CPU Load: $(uptime | awk -F'load average:' '{ print $2 }')"
echo "Memory Usage:"
free -h
echo "Disk Usage:"
df -h