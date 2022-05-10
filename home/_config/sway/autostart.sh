#!/bin/bash

host=$(uname -n)

killall swayidle
swayidle -w \
    timeout 120 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &

if [ $host == "whitebox" ];
then
    swaymsg output DVI-D-1 pos 0 0
    swaymsg output HDMI-A-1 pos 1680 0
fi

