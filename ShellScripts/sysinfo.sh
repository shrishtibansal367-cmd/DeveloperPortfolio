#!/bin/bash
# Author: Shrishti Bansal (Roll No: XXXXXX)
# Description: Prints a formatted system information report

NAME="Shrishti Bansal"
ROLL="2601730321"

echo "=================================================="
echo " System Report | $NAME | Roll: $ROLL | $(date '+%Y-%m-%d %H:%M:%S')"
echo "=================================================="

echo ""
echo "--- CPU ---"
CPU_MODEL=$(lscpu | grep "Model name" | sed 's/Model name:[[:space:]]*//')
CPU_CORES=$(nproc)
echo "Model : $CPU_MODEL"
echo "Cores : $CPU_CORES"

echo ""
echo "--- Memory ---"
free -h | awk '/^Mem:/ {print "Total : " $2 "\nUsed  : " $3}'

echo ""
echo "--- Top 3 Processes by CPU ---"
printf "%-8s %-20s %s\n" "PID" "COMMAND" "%CPU"
ps -eo pid,comm,%cpu --no-headers | sort -k3 -nr | head -3 | \
  awk '{printf "%-8s %-20s %s\n", $1, $2, $3}'

echo ""
echo "=================================================="
echo " Report generated successfully."
echo "=================================================="
