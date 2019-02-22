#!/bin/bash

awk '/cron/ || /CRON/,!/sudo/' /var/log/syslog | awk 'NF < 13' >> /home/bella/soalshift1/hasil5.log
