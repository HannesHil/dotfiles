#!/usr/bin/env bash

pid=$(pgrep wlsunset)

if [[ $1 = "toggle" ]]; then
	if pgrep -x "wlsunset" > /dev/null; then
		kill -9 $(pgrep -x "wlsunset");
	else
		wlsunset -t 3000 -S 0:00 -s 0:00 &
	fi
fi

if pgrep -x "wlsunset" > /dev/null; then
	echo '{"tooltip": "redshift enabled", "class": "enabled","percentage":100}'
else
	echo '{"tooltip": "redshift disabled", "class": "disabled", "percentage":0}'
fi
