#!/bin/env bash
function light() {
	if [[ -z $1 ]] && ! [[ $1 =~ ^[0-9]+$ ]] 
	then
		echo "Usage: light ( 10-100 | min | low | max )"
		echo $1 $2 $3 $#
		return
	fi
	if [[ -n $1 && $1 -ge 5 && $1 -le 800 ]]
	then
		local level=$1
	fi
	if [[ $1 == "max" ]]
	then
		local level=800
	fi

	if [[ $1 == "min" ]]
	then
		local level=10
	fi

	if [[ $1 == "low" ]]
	then
		local level=10
	fi

	if [[ $1 == "check" ]]
	then
		cat "/sys/class/backlight/nvidia_wmi_ec_backlight/brightness"
		return
	fi


	echo $level | sudo tee /sys/class/backlight/nvidia_wmi_ec_backlight/brightness > /dev/null
}
export -f light
