#!/bin/bash
if [ -d "./source" ]; then
	echo "Updating remote source..."
	cd source
	git reset --hard
	if [ "$1" != "" ]; then
		git checkout "$1"
	fi
	git pull
	git rebase
else
	echo "No source available locally. Fetching..."
	if [ "$1" != "" ]; then
		git clone https://github.com/Sollace/Unicopia.git source --branch "$1"
	else
		git clone https://github.com/Sollace/Unicopia.git source
	fi
fi
exit