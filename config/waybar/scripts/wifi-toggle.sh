#!/usr/bin/env bash

state=$(rfkill list wifi | grep -i 'Soft blocked:' | awk '{print $3}')

if [ "$state" = "yes" ]; then
    rfkill unblock wifi
else
    rfkill block wifi
fi
