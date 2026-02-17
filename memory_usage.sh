#!/bin/bash

mem=$(free | awk '/Mem/ {print int($3/$2 * 100)}')

echo "Memory Usage: $mem%"

