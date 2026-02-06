#!/bin/bash
# clean_temp.sh

echo "Cleaning temporary files..."
rm -rf /tmp/* 2>/dev/null
rm -rf ~/.cache/* 2>/dev/null
echo "Temporary files cleaned!"
