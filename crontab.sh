  GNU nano 2.9.3                        /tmp/crontab.omakU9/crontab                        Modified  

# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command

nomor 1
14 14 14 2 5 /bin/bash /home/bella/modul1/soal1.sh

nomor 4
0 * * * * /bin/bash /home/bella/modul1/soal4.sh

nomor 5
2-30/6 * * * * bin/bash /home/bella/modul1/soal5.sh
