#!/bin/env bash
function roll() {
	roll_size=100
	COLOR_YELLOW='\e[0;33m'
	COLOR_RESET='\e[0m'

	if [[ -n $1 ]] && [[ $1 -eq $1 ]] && [[ $1 -ge 1 ]]; then
		roll_size=$1
	fi
	if [[ $roll_size -eq 1 ]]; then
		result=1
	else
		result=$(( $RANDOM%roll_size + 1 ))
	fi

	echo -e "${COLOR_YELLOW}$(whoami) rolls $result (1-${roll_size})${COLOR_RESET}"
}

export -f roll
