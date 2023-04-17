#!/bin/sh

function whitebox_init() {
    xrandr --output HDMI-0 --primary --right-of DVI-D-0
}

function imslow_init() {
    xrandr --output HDMI-5 --primary --right-of HDMI-4 --rotate left
}

case $HOSTNAME in
    whitebox)
        whitebox_init;;
    imslow)
        imslow_init;;
    *) echo "hostname not found";;
esac

echo $HOSTNAME
