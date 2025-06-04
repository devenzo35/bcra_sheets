#!/bin/bash

# Example of automation with cron for this script

# Open the cron jobs editor:
crontab -e

# Add this line to the end of the file:
# @weekly cd /home/your_user/dev/infla_script && /home/your_user/dev/infla_script/infla_env/bin/python infla.py >> /home/your_user/dev/infla_script/log.txt 2>&1
# Replace your_user for your real username