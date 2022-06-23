#!/usr/bin/bash

lock="   Lock"
log_out="   Logout"
power_off="⏻   Power off"
reboot="   Reboot"
suspend="⏾   Suspend"

choose=$(printf '%s;%s;%s;%s;%s\n' "$lock" "$log_out" "$power_off" "$reboot" "$suspend" \
         | rofi -dmenu \
                -theme ~/.config/rofi/powermenu.rasi \
                -sep ';' \
                -selected-row 0)

case "$choose" in
     "$lock")       betterlockscreen -l blur --off 7;;
     "$log_out")    i3-msg exit;;
     "$power_off")  poweroff;;
     "$reboot")     reboot;;
     "$suspend")    systemctl suspend;;
     *)             exit 1;;
esac
