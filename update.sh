#!/bin/bash

sudo apt update -y 
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

# Optional: reboot prompt
log_message "System update completed."
read -p "Reboot now? (y/N): " REBOOT
if [[ "$REBOOT" =~ ^[Yy]$ ]]; then
    log_message "Rebooting system..."
    reboot
else
    log_message "Reboot skipped."
fi
