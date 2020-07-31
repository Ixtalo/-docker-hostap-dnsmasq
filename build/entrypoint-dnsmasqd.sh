#!/bin/sh
set -eo pipefail
echo "WIFI_DEV: $WIFI_DEV"
dnsmasq --bind-interfaces --interface=$WIFI_DEV --no-daemon --conf-file=/config/dnsmasqd.conf
