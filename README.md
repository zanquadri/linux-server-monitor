# Linux Server Health Monitor

A Bash-based Linux server monitoring tool built as part
of my AWS Cloud Engineer learning journey.

## Features

- Displays server uptime
- Monitors memory usage
- Checks root filesystem disk usage
- Warns when disk usage reaches 80%
- Checks Linux service status
- Saves monitoring reports to a log file
- Runs automatically every 5 minutes using cron

## Technologies

- Linux (Ubuntu)
- Bash scripting
- systemctl
- cron
- awk

## Usage

Run the monitoring script:

./server-monitor.sh

Save a report:

./server-monitor.sh >> logs/health.log 2>&1

## Project Structure

linux-server-monitor/
├── server-monitor.sh
├── README.md
└── logs/
    └── health.log

## Skills Demonstrated

- Linux system administration
- Bash scripting and conditional logic
- Server health monitoring
- Log management
- Task scheduling
- Basic troubleshooting

