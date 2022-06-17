#!/bin/sh

function whitebox_init() {
    xrandr --output HDMI-1 --primary --right-of DVI-D-1
}

function bluebook_init() {
    xrandr --auto
}

case $HOSTNAME in
    whitebox)
        whitebox_init;;
    bluebook)
        bluebook_init;;
    *) echo "hostname not found";;
esac
