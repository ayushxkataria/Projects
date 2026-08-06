#!/bin/bash

LIMIT=40

USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $USAGE -gt $LIMIT ]
then
    echo "Warning: Disk usage above 80%"
else
    echo "Disk usage normal"
fi
