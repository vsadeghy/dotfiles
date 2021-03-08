#!/bin/bash


## [Set VPN commands]. Setup for Mullvad is done below.
VPN_CONNECT="sudo /home/vahid/.local/bin/vpn 1"
VPN_DISCONNECT="sudo /home/vahid/.cal/bin/vpn"
VPN_GET_STATUS="nordvpn status"

## [Set VPN status parsing]
VPN_STATUS=[ (ps aux | grep openconnect | rown 1 | coln 1) = "root"
 ] && echo Connected || echo Disconnected	# returns Connected/Disconnected/<other>
CONNECTED=Connected

VPN_CURRENT_COUNTRY=$(echo $(echo $(nordvpn status) | awk '{print $9}'))	# returns cOUNTRY TO WHICH VPN IS CONNECTED
VPN_CURRENT_CITY=$(echo $(echo $(nordvpn status) | awk '{print $11}'))	# returns CITY TO WHICH VPN IS CONNECTED

vpn_toggle_connection() {
# connects or disconnects vpn
    if [ "$VPN_STATUS" = "$CONNECTED" ]; then
        $VPN_DISCONNECT
    else
        $VPN_CONNECT
    fi
}

vpn_report() {
  if [ "$VPN_STATUS" = "$CONNECTED"  ]; then
		echo "$VPN_CURRENT_COUNTRY ($VPN_CURRENT_CITY)"
	elif [ "$VPN_STATUS" = "$CONNECTING" ]; then
		echo "Connecting"
	else
		echo "Disconnected"
	fi
}

case "$1" in
	--toggle-connection) vpn_toggle_connection ;;
	--location-menu) ~/.config/dmenu/nord-countries.sh ;;
	*) vpn_report ;;
esac
