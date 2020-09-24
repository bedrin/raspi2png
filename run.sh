#!/bin/sh

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/vc/lib

while :; do
    sleep 60  # 2 secs is the default for watch
    find /export/ -type f -mtime +1 -name '*.png' -execdir rm -- '{}' \;
    /opt/raspi2png/raspi2png -p /export/screenshot-`date '+%Y%m%d%H%M%S'`.png
done
