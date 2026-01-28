# Simple Patch Automation (Ubuntu/Debian)

A very small Bash script to apply OS updates on Ubuntu/Debian machines and log the output to a file. It also checks whether a reboot is required after patching.

## What it does
- Runs `apt update`
- Runs `apt upgrade -y`
- Runs `apt autoremove -y` (optional cleanup)
- Logs everything to `/var/log/simple_patch.log`
- Checks reboot requirement via `/var/run/reboot-required`

## Requirements
- Ubuntu/Debian-based system (uses `apt`)
- Root privileges (run with `sudo`)

## Files
- Script: `simple_patch.sh`
- Log file: `/var/log/simple_patch.log`

## Install
```bash
chmod +x simple_patch.sh
