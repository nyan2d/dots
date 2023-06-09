#!/bin/sh

function whitebox_kb_setup() {
    setxkbmap -model pc104 -layout us,ru -option grp:alt_shift_toggle
}

function imslow_kb_setup() {
    setxkbmap -model pc104 -layout us,ru -option grp:alt_shift_toggle
}

case $HOSTNAME in
    whitebox)
        whitebox_kb_setup;;
    imslow)
        imslow_kb_setup;;

    *) echo "hostname not found";;
esac
