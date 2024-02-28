#!/bin/env bash
function roll() {
roll_size=100
if [[ -n $1 ]] && [[ $1 -eq $1 ]] && [[ $1 -ge 0 ]]; then
	roll_size=$1
fi
if [[ $roll_size -eq 1 ]]; then
	result=1
else
	result=$(( $RANDOM%roll_size + 1))
fi

YELLOW='\e[0;33m'
NC='\e[0m'

echo -e "${YELLOW}$(whoami) rolls $result (1-${roll_size})${NC}"
}

export -f roll
