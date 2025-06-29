#!/bin/bash

#A simple cript to display system information

echo -e " Hello  $(whoami)"

echo -e " Todays date is $(data)"

echo "Here is your disk storage"
df -h 

echo "Memory Usage"
free -h 

