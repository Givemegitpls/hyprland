#!/bin/bash

msgId="3378455"

value=$(cat .config/hypr/ROGstatement.txt | tr -d '\n')
echo $value
if [ $value = 'performance' ]
then 
	asusctl profile -P quiet;
	rm .config/hypr/ROGstatement.txt;
	echo "quiet" >> .config/hypr/ROGstatement.txt;
	dunstify -u low -r "$msgId" "Quiet"
elif [ $value = 'balanced' ]
then
	asusctl profile -P performance;
	rm .config/hypr/ROGstatement.txt;
	echo "performance" >> .config/hypr/ROGstatement.txt;
	dunstify -u low -r "$msgId" "Performance"
else
	asusctl profile -P balanced;
	rm .config/hypr/ROGstatement.txt;
	echo "balanced" >> .config/hypr/ROGstatement.txt;
	dunstify -u low -r "$msgId" "balanced"
fi
