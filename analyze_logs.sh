#!/bin/bash

LOG_FILE="/var/log/apache2/access.log"

grep "21/May/2025" $LOG_FILE

awk '$9 == "404"' $LOG_FILE

awk '$6 ~ /GET/' $LOG_FILE

awk '{print $1}' $LOG_FILE

awk '{print $9}' $LOG_FILE | sort | uniq -c

awk '{print $1}' $LOG_FILE | sort | uniq -c

awk '$9 == 403 {print $1}' $LOG_FILE | sort | uniq -c | sort -nr


