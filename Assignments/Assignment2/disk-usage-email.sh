#!/bin/bash

#Fetch disk usage percentage

disk_usage = $(df / | awk '{print $5}' | tail -1 | cut -d'%' -f1)

if [ $disk_usage -ge 90 ]; then
    #Email Subject content
    subject = "Exceeding disk Usage"

    #Email message content
    message = "The disk usage is currently at $disk_usage%. Please take appropriate steps to free up some space!"

    #Send email to system admin
    echo "$message" | mail -s "$subject" lalitkumarchoudhary2018@gmail.com
fi