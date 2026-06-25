#!/bin/bash
disk_usage=$(df -h / | tail -1 | awk '{gsub("%","",$5); print $5}')
if [ "$disk_usage" -gt 80 ]; then
	echo "WARNING: Disk usage is "$disk_usage"%"
else
	echo "Disk usage is normal: "$disk_usage"%"
fi

