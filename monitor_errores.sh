#!/bin/bash

LOG_PATH="/var/log/apache2/error.log"
THRESHOLD=5  # Maximum number of errors in the time interval
INTERVAL=60 # Time interval in seconds

COUNT=$(tail -n 100 $LOG_PATH | grep "\[core:error\]" | wc -l)

if [ $COUNT -gt $THRESHOLD ]; then
    echo "ALERT! 🚨 $COUNT errors have been detected in the last $INTERVAL seconds." | mail -s "Apache Error Alert" agustinpalopoli1@gmail.com
fi
