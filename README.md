# Izabel Trunk Monitor

A simple script for monitoring active trunks in an Asterisk-based system (Isabel). This script checks every minute to see if a trunk is open with no active calls, and automatically restarts the server if the condition is met.

## Features
- Monitors SIP trunks for open connections with no active calls
- Automatically restarts the server when the condition is met
- Runs every minute via cron job
- Compatible with Asterisk-based systems like Isable

## Installation

1. Clone this repository to your server:
   ```bash
   git clone https://github.com/yourusername/izabel-trunk-monitor.git
Navigate to the script directory:

bash
Copy
Edit
cd izabel-trunk-monitor
Make the script executable:

bash
Copy
Edit
chmod +x check_trunk.sh
Add the script to cron for periodic execution:

bash
Copy
Edit
crontab -e
Then add the following line:

bash
Copy
Edit
* * * * * /usr/local/bin/check_trunk.sh
Usage
The script will automatically run every minute and check for open trunks with no active calls.
If such a condition is found, the server will be restarted to resolve the issue.
Requirements
Asterisk-based system (Isabel, FreePBX, etc.)
asterisk CLI tool
cron for scheduling the script to run periodicall
