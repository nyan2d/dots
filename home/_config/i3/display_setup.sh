#!/bin/sh

function whitebox_init() {
    xrandr --output HDMI-0 --primary --right-of DP-4
}

function blackbox_init() {
    xrandr --output HDMI-1 --primary --left-of DP-1
}

case $HOSTNAME in
    whitebox)
        whitebox_init;;
    blackbox)
        blackbox_init;;
    *) echo "hostname not found";;
esac

echo $HOSTNAME
