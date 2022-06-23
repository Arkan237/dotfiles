#!/usr/bin/bash

SCREENSHOT_DIR="$HOME/Pictures/Screenshots"
FILENAME="Screenshot_$(date '+%Y-%m-%d')_$(date '+%H-%M-%S').png"

if [ ! -d "$SCREENSHOT_DIR" ]; then
	mkdir $SCREENSHOT_DIR
fi

scrot $FILENAME -e "mv $FILENAME ~/Pictures/Screenshots" $1
send_notify=$(dunstify -i camera 'Screen Captured!' 'Screenshot saved to ~/Pictures/Screenshot' -A open_file,action)

if [ "$send_notify" == "open_file" ]; then
    xdg-open $SCREENSHOT_DIR/$FILENAME
fi 
