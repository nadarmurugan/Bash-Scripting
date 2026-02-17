#!/bin/bash
# Shebang line → tells the system to execute this script using Bash shell

# Run 'top' in batch mode (-b) for 1 iteration (-n1)
# Grep the line containing CPU information
# Use awk to calculate CPU usage:
# In top output, $8 usually represents idle CPU percentage
# So, CPU Usage = 100 - Idle Percentage
cpu=$(top -bn1 | grep "Cpu" | awk '{print 100 - $8}')

# Print the calculated CPU usage
echo "CPU Usage: $cpu%"

