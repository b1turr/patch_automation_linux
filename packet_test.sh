#!/bin/bash

LOG="/var/log/simple_patch.log"

echo "Patch run started: $(date) " | tee -a "$LOG"

# Update package list
apt update 2>&1 | tee -a "$LOG"

# Install updates
apt upgrade -y 2>&1 | tee -a "$LOG"

# Optional: remove unused packages
apt autoremove -y 2>&1 | tee -a "$LOG"

# Reboot check (Ubuntu/Debian)
if [ -f /var/run/reboot-required ]; then
  echo "Reboot is required." | tee -a "$LOG"
else
  echo "No reboot required." | tee -a "$LOG"
fi

echo "Patch run finished: $(date) " | tee -a "$LOG"

