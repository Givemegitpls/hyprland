#!/bin/bash
# dunstBright

msgId="3378455"

brightnessctl "$@" > /dev/null

brightpercent=$(brightnessctl -m --device='amdgpu_bl0' | awk -F, '{print substr($4, 0, length($4)-1)}')

dunstify -a "changeBrightness" -u low -r "$msgId" \
	-h int:value:"$brightpercent" "Яркость экрана: $brightpercent%"
