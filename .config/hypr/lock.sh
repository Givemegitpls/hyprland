#!/bin/bash

hyprctl keyword monitor "eDP-1, 1920x1080@120, 0x0, 1, vrr, 1"
brightnessctl --device="asus::kbd_backlight" set 0 
sleep 0.5
gtklock -i -s .config/gtklock/css/Firewatch.css
