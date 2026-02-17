#!/bin/bash

disk=$(df -h / | awk 'NR==2 {print $5}')

echo "Disk Usage: $disk"

