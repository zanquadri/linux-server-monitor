#!/bin/bash

echo "================================="
echo "       SERVER HEALTH REPORT"
echo "================================="

echo ""
echo "Date and Time:"
date


echo ""
echo "Server Uptime:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h / 

echo ""
echo "Disk Health Check:"

DISK_USAGE=$(df -P / | awk 'NR==2 {gsub(/%/,"",$5); print $5}')

if [ "$DISK_USAGE" -ge 80 ]; then 
	echo "Warning: Disk usage is ${DISK_USAGE}%!"
else
	echo "OK: Disk usage is  ${DISK_USAGE}%."
fi

echo "" 
echo "Service Health Check:"

SERVICE="cron"

if systemctl is-active --quiet "$SERVICE"; then
	echo "OK: $SERVICE is running."
else
	echo "WARNING: $SERVICE is NOT running!"
fi



echo ""
echo "================================="
echo "       END OF REPORT"
echo "================================="
