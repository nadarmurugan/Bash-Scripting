#!/bin/bash
# Shebang line → tells the system to run this script using the Bash shell

# The 'free' command shows system memory usage (RAM details)
# We pipe (|) the output to 'awk' to process the text
# 'NR==2' means select the 2nd row (this row contains actual memory values)
# '$4' means print the 4th column (which is Free memory in KB by default)
free=$(free | awk 'NR==2 {print $4}')

# Print the free memory value stored in the variable
echo "Free Memory: $free KB"

