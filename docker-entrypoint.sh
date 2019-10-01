#!/bin/sh
if [ "$1" = 'cron' ]; then
	#Make Pre- & Postscripts executable
	test -f /pre.sh && chmod +x /pre.sh
	test -f /post.sh && chmod +x post.sh

	#Run Initial Sync
	/sync.sh

	#Setup CronJob
	echo "$CRONTIMETABLE /sync.sh >> /dev/stdout 2>&1" | crontab -
	crond -f
fi

exec "vdirsyncer $@"