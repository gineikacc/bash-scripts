#!/bin/env bash
function rapego() {
	mkdir -p ~/temp/img_scrape/
	cd ~/temp/img_scrape/
	gallery-dl --destination . $1
	mkdir -p ~/temp/img_scrape/.flat/
	find . -type f | grep -v '.flat' | sed 's/^/"/;s/$/"/'  \
		| xargs mv -t ~/temp/img_scrape/.flat/
	return
}
function rapecheck() {
	qimgv ~/temp/img_scrape/.flat/
}
function rapesave() {
	cp ~/temp/img_scrape/.flat/* ~/img/
	return
}
function rapepurge() {
	rm -rf ~/temp/img_scrape/
	return
}
export -f rapego
export -f rapecheck
export -f rapesave
export -f rapepurge
