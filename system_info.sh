#!/bin/bash

echo "=========== SYSTEM INFORMATION ==========="

# Basic Info
echo "Hostname           : $(hostname)"
echo "Current User       : $(whoami)"
echo "Current Date       : $(date)"
echo "System Uptime      : $(uptime -p)"

# OS Information
echo "Operating System   : $(uname -o)"
echo "Kernel Version     : $(uname -r)"
echo "System Architecture: $(uname -m)"

# CPU Information
echo "CPU Cores          : $(nproc)"
echo "CPU Model          : $(lscpu | grep 'Model name' | cut -d':' -f2)"

# Memory Information
echo "Total Memory       : $(free -h | awk '/Mem:/ {print $2}')"
echo "Used Memory        : $(free -h | awk '/Mem:/ {print $3}')"
echo "Free Memory        : $(free -h | awk '/Mem:/ {print $4}')"

# Disk Information
echo "Total Disk Space   : $(df -h / | awk 'NR==2 {print $2}')"
echo "Used Disk Space    : $(df -h / | awk 'NR==2 {print $3}')"
echo "Disk Usage         : $(df -h / | awk 'NR==2 {print $5}')"

# Network Information
echo "IP Address         : $(hostname -I | awk '{print $1}')"
echo "MAC Address        : $(ip link show | awk '/ether/ {print $2; exit}')"

# Users Information
echo "Logged-in Users    : $(who | wc -l)"
echo "Total Users        : $(cut -d: -f1 /etc/passwd | wc -l)"

# System Load
echo "Load Average       : $(uptime | awk -F'load average:' '{print $2}')"

# Disk Inode Info
echo "Inode Usage        : $(df -i / | awk 'NR==2 {print $5}')"

echo "=========================================="

