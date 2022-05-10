#!/bin/bash

# Temp file name
BG="/tmp/lock.png"

# Screen size
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')

# Take screenshot
ffmpeg \
    -f x11grab \
    -video_size $RES \
    -y \
    -i $DISPLAY \
    -filter_complex "boxblur=5:1,gblur=3:1" \
    -vframes 1 \
    $BG \
    -loglevel quiet

# Open i3lock
i3lock \
    --radius 200 \
    --clock \
    --inside-color=ffffff1c \
    --insidever-color=ffffff33 \
    --time-color=ffffffff \
    --date-color=ffffffaa \
    --ring-color=ffffff3e \
    --line-color=00000000 \
    --keyhl-color=ff0000ff \
    --ringver-color=00000000 \
    --insidever-color=0000001c \
    --insidewrong-color=0000001c \
    --ringwrong-color=00000055 \
    -i $BG

# Delete temp file
rm $BG
