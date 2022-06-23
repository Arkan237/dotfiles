#!/usr/bin/bash

STATUS=$(playerctl status 2> /dev/null)

if [ "$STATUS" = "Playing" ]; then
	echo "$(playerctl metadata -f '{{title}} - {{artist}}')"
elif [ "$STATUS" = "Paused" ]; then
	echo "$(playerctl metadata -f '{{title}} - {{artist}}') (Paused)"
else
	echo "No music playing"
fi
