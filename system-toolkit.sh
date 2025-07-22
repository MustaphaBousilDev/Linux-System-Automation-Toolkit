#!/bin/bash

#Load Modules
source modules/system_info.sh
source modules/disk_usage.sh
source modules/user_mgmt.sh
source modules/backup.sh
source modules/log_analyzer.sh

while true; do
  echo ""
  echo "=== Linux System Automation Toolkit ==="
  echo "1) System Info"
  echo "2) Disk Usage"
  echo "3) User Management"
  echo "4) Backup Files"
  echo "5) Analyse Logs"
  echo "6) Exit"
  read -p "Choose an option: " choice

  case $choice in
    1) get_system_info ;;
    2) analyze_disk_usage ;;
    3) user_management_menu ;;
    4) peform_backup ;;
    5) analyze_logs ;;
    6) echo "Goodbye!";  exit;;
    *) echo "Invalid options";;
  esac
done
