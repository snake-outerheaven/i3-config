#!/bin/bash

# Rofi Power Menu – Gruvbox Dark (no emoji)
options=" Lock\n Logout\n Suspend\n Reboot\n Shutdown"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power" \
    -theme ~/.config/rofi/config.rasi \
    -selected-row 0)

case "$chosen" in
    " Lock")
        i3lock-fancy
        ;;
    " Logout")
        i3-msg exit
        ;;
    " Suspend")
        systemctl suspend
        ;;
    " Reboot")
        systemctl reboot
        ;;
    " Shutdown")
        systemctl poweroff
        ;;
    *)
        exit 0
        ;;
esac
