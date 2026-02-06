#!/bin/bash
# Simple Uptime & Logged-in Users Checker
# Author: Jeyamurugan Nadar
# Email: murugannadar077@gmail.com

echo "=============================="
echo "System Status Report"
echo "Hostname: $(hostname)"
echo "Date    : $(date)"
echo "=============================="

echo
echo "Uptime:"
uptime

echo
echo "Logged-in users:"
who

echo
echo "Detailed sessions:"
w
