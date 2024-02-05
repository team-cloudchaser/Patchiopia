#!/bin/bash
LANG=en-GB.UTF-8
echob "[1/4] Removing previous build results..."
rm -rf build/* 2>/dev/null
mkdir -p build
echob "[2/4] Fetching source..."
shx getSource "$1"
echob "[3/4] Applying patches..."
cp -r source/* build
cp -r patch/* build
echob "[4/4] Building..."
cd build
./gradlew build
cd "$SOURCE_DIR"
echob "All build steps are done."
exit