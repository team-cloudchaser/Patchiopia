#!/bin/bash
if [ -d "./source" ]; then
	echo "Updating remote source..."
	cd source
	git pull
	git rebase
else
	echo "No source available locally. Fetching..."
	git clone https://github.com/Sollace/Unicopia.git source
fi
exit