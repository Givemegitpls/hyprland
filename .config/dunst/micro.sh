#!/bin/bash
# dunstBright

msgId="3378455"

station=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | sed 's/Volume://' | tr -d [:digit:] | tr -d ' .[]')

if [ $station = 'MUTED' ]
then
	dunstify -u low -r "$msgId" "Микрофон выключен"
else
	dunstify -u low -r "$msgId" "Микрофон включен"
fi
