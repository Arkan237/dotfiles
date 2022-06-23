#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit

# Launch top bar and bottom bar
case $1 in
	top) polybar top;;
	bottom) polybar bottom;;
esac
