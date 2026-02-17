#!/bin/bash
# Shebang line → tells the system to execute this script using the Bash shell

# Define the log file path
# All monitoring output will be appended (>>) to this file
LOG="/home/murugan/bash/system_data.log"

# Print a separator line with current date and time
# $(date) inserts the current system date and timestamp
# >> means append (do not overwrite existing content)
echo "----- $(date) -----" >> $LOG

# Get system load average using 'uptime'
# 'uptime' shows system running time and load averages (1, 5, 15 minutes)
# We use awk to extract only the part after 'load average:'
# -F sets field separator as "load average:"
# {print $2} prints only the load values
echo "Load: $(uptime | awk -F'load average:' '{print $2}')" >> $LOG

# Get memory usage information
# 'free -h' displays memory usage in human-readable format (MB/GB)
# NR==2 selects the second row (actual memory data line)
# $3 prints the used memory column
echo "Memory Used: $(free -h | awk 'NR==2 {print $3}')" >> $LOG

# Get disk usage for root (/) partition
# 'df -h /' shows disk usage for root directory
# NR==2 selects the actual data row
# $5 prints disk usage percentage (e.g., 42%)
echo "Disk Used: $(df -h / | awk 'NR==2 {print $5}')" >> $LOG

# Add an empty line for better readability between entries
echo "" >> $LOG

