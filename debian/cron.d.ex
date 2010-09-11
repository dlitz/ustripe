#
# Regular cron jobs for the ustripe package
#
0 4	* * *	root	[ -x /usr/bin/ustripe_maintenance ] && /usr/bin/ustripe_maintenance
