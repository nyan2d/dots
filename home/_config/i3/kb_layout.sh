#!/bin/sh

function whitebox_kb_setup() {
    setxkbmap -model pc104 -layout us,ru -option grp:alt_shift_toggle,grp:win_space_toggle
}

function blackbox_kb_setup() {
    setxkbmap -model pc104 -layout us,ru -option grp:alt_shift_toggle,caps:swapescape
}

case $HOSTNAME in
    whitebox)
        whitebox_kb_setup;;
    blackbox)
        blackbox_kb_setup;;

    *) echo "hostname not found";;
esac
