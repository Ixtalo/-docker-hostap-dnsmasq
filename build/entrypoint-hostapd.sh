#!/bin/sh
set -eo pipefail
echo "WIFI_DEV: $WIFI_DEV"
echo "iface $WIFI_DEV inet manual" >> /etc/network/interfaces
ifconfig $WIFI_DEV down
ifconfig $WIFI_DEV up 192.168.99.1
hostapd -i $WIFI_DEV /config/hostapd.conf
