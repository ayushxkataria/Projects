#!/bin/bash

echo "===== Memory Allocation ====="
echo

echo "Total Memory:"
free -h | awk '/Mem:/ {print $2}'

echo "Used Memory:"
free -h | awk '/Mem:/ {print $3}'

echo "Free Memory:"
free -h | awk '/Mem:/ {print $4}'

echo "Available Memory:"
free -h | awk '/Mem:/ {print $7}'
