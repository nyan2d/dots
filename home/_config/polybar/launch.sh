#!/bin/sh

# TODO: rewrite
# ref: https://github.com/jayywolff/dotfiles/tree/master/.config/polybar

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

case $HOSTNAME in
    whitebox)
        export PRIMARY_MONITOR=HDMI-0
        export SECONDARY_MONITOR=DVI-D-0
        ;;
    *) echo "default";;
esac

polybar primary &
polybar secondary &

echo "Polybar launched..."
