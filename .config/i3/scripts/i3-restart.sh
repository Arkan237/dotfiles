#!/usr/bin/bash

# Kill picom
killall picom

# Kill dunst
killall dunst

# Restart i3
i3-msg restart

# Send notification
dunstify -u low "i3" "i3 reloaded"
