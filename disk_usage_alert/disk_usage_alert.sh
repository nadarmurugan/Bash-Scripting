#!/bin/bash
# Disk Usage Alert Script
# Monitors disk usage and sends email alerts when usage exceeds 80%
# Author: Jeyamurugan Nadar

# Disk monitoring command with awk filtering

df -h | awk '$5+0 > 80 {print "Disk Alert 🚨\nMount:", $6, "\nUsage:", $5}' \
| mail -s "Disk Usage Alert" murugannadar077@gmail.com
