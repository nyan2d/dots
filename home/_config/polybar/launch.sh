#!/bin/sh

# TODO: rewrite
# ref: https://github.com/jayywolff/dotfiles/tree/master/.config/polybar

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar first &
polybar second &

echo "Polybar launched..."
