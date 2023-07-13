#!/bin/sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

case $HOSTNAME in
    whitebox)
        export PRIMARY_MONITOR=HDMI-1
        export SECONDARY_MONITOR=DP-1
        ;;
    imslow)
        export PRIMARY_MONITOR=HDMI-4
        export SECONDARY_MONITOR=HDMI-5
        ;;
    *) echo "default";;
esac

polybar primary &
polybar secondary &

echo "Polybar launched..."
