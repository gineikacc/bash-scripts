#!/bin/env bash
function light() {
	if [[ -z $1 ]]
	then
		echo "Usage: light ( 10-100 | min | low | max )"
		return
	fi
	if [[ -n $1 && $1 -ge 5 && $1 -le 100 ]]
	then
		local level=$1
	fi
	if [[ $1 == "max" ]]
	then
		local level=100
	fi

	if [[ $1 == "min" ]]
	then
		local level=5
	fi

	if [[ $1 == "low" ]]
	then
		local level=10
	fi

	if [[ $1 == "check" ]]
	then
		cat "/sys/class/backlight/nvidia_0/brightness"
		return
	fi


	echo $level | sudo tee /sys/class/backlight/nvidia_0/brightness
}

export -f light
