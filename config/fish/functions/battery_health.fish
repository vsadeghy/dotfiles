function battery_health
	cat /sys/class/power_supply/BAT1/charge_full \
		/sys/class/power_supply/BAT1/charge_full_design \
	| tee /dev/tty \
	| jq -s '.[0]/.[1] * 100 | round / 100'
end
