#!/bin/env bash
function roll() {
	roll_size=100
	COLOR_YELLOW='\e[0;33m'
	COLOR_RED='\e[0;31m'
	COLOR_RESET='\e[0m'

	if [[ -n $1 ]] && [[ $1 -eq $1 ]] && [[ $1 -ge 1 ]]; then
		roll_size=$1
	fi
	if [[ -n $1 ]] && [[ $1 -le 0 ]]; then
		echo -e "${COLOR_RED}Can't have numbers less than 1!$COLOR_RESET"
		return 1
	fi
	if [[ $roll_size -eq 1 ]]; then
		result=1
	else
		result=$(( $RANDOM%roll_size + 1 ))
	fi

	echo -e "${COLOR_YELLOW}$(whoami) rolls $result (1-${roll_size})${COLOR_RESET}"
}

export -f roll
