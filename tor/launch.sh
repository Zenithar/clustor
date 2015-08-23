#! /bin/sh
set -e

TIMEZONE="${TIMEZONE:-UTC}"

if [[ -f /usr/share/zoneinfo/$TIMEZONE ]]; then
    echo "Setting timezone to $TIMEZONE"
    rm -f /etc/localtime
    cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime
    echo "$TIMEZONE" > /etc/timezone
fi

tor -f /etc/tor/torrc