#!/bin/bash
apt-get update && apt-get install -y wget ca-certificates sudo cron supervisor
/usr/bin/supervisord

wget https://raw.githubusercontent.com/Saurav66/frappe/main/install_scripts/setup_frappe.sh
bash setup_frappe.sh --setup-production
rm /home/frappe/*.deb

exit 0
