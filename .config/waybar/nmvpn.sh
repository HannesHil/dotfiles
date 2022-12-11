#!/usr/bin/env bash

# VPNcon=$(nmcli -t -f NAME c show | grep "vpn-*" | cut -d' ' -f1 | sort)
activeVPNcon=$(nmcli -t -f NAME c show --active | grep "vpn-*")

if [[ $1 = "toggle" ]]; then
	if [[ $activeVPNcon = *[![:space:]]* ]]; then
		nmcli c d $activeVPNcon
		activeVPNcon="  "
	else
		nmcli c u vpn-sunna
		activeVPNcon="vpn-sunna"
	fi
fi

if [[ $activeVPNcon = *[![:space:]]* ]]; then
	echo $activeVPNcon | sed 's/vpn-//g'
else
	echo "nocon"
fi
