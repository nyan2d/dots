#!/bin/sh

function whitebox_init() {
    xrandr --output HDMI-0 --primary --right-of DVI-D-0
}

case $HOSTNAME in
    whitebox)
        whitebox_init;;
    *) echo "hostname not found";;
esac
