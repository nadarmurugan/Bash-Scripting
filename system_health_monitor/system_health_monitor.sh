#!/bin/bash

LOG_FILE="/var/log/simple_monitor.log"

{
echo "=================================================="
echo "🖥️  SYSTEM HEALTH REPORT"
echo "📅 Date & Time : $(date)"
echo "=================================================="

echo "🔹 SYSTEM INFO"
echo "Hostname       : $(hostname)"
echo "OS             : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "Kernel         : $(uname -r)"

echo "--------------------------------------------------"
echo "⚙️  RESOURCE USAGE"
echo "CPU Usage      : $(top -bn1 | grep Cpu | awk '{print $2+$4}')%"
echo "Memory Usage   : $(free -m | awk 'NR==2{print $3 "/" $2 " MB"}')"
echo "Disk Usage (/) : $(df -h / | awk 'NR==2{print $5}')"

echo "--------------------------------------------------"
echo "⏳ SYSTEM STATUS"
echo "Uptime         : $(uptime -p)"
echo "Processes      : $(ps aux | wc -l)"

echo "--------------------------------------------------"
echo "👥 LOGGED-IN USERS"
who

echo "=================================================="
echo ""
} >> "$LOG_FILE"
