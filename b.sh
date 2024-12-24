#!/bin/env bash
function b() {
	if [[ -z "$1" ]]; then
		count="1";
	else
		count="$1";
	fi

	for i in $(seq 1 "$count")
	do
		cd ../;
	done
}

export -f b
