#!/bin/bash
# Author: Your Name (Roll Number)
# Description: Generates a formatted system information report.

echo "=================================================="
echo "          SYSTEM INFORMATION REPORT               "
echo "=================================================="
echo "Name: Your Name"
echo "Roll Number: Your Roll Number"
echo "Date: $(date)"
echo "--------------------------------------------------"

echo "[CPU Information]"
lscpu | grep -E "Model name|Core\(s\) per socket|Socket\(s\)"

echo -e "\n[Memory Usage]"
free -h

echo -e "\n[Top 3 Processes by CPU Usage]"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -4

echo "--------------------------------------------------"
echo "Report generated successfully."
echo "=================================================="
