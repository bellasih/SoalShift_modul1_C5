#!/bin/bash

awk '/cron/ || /CRON/,!/sudo/' /var/log/syslog | awk 'NF < 13' >> /home/bella/modul1/hasil5.log
