#!/bin/bash
cpu=$(top -bn1 | grep "Cpu" | awk '{print 100 - $8}')
echo "CPU Usage: $cpu%"

