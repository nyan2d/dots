#!/bin/sh

function whitebox_init() {
    xrandr --output HDMI-1 --primary --right-of DP-1
}

function imslow_init() {
    xrandr --output HDMI-5 --primary --right-of HDMI-4
}

case $HOSTNAME in
    whitebox)
        whitebox_init;;
    imslow)
        imslow_init;;
    *) echo "hostname not found";;
esac

echo $HOSTNAME
