#!/bin/bash
LANG=en-GB.UTF-8
echob "[1/5] Removing previous build results..."
rm -rf build/* 2>/dev/null
mkdir -p build
echob "[2/5] Fetching source..."
shx getSource "$1"
cp -r source/* build
echob "[3/5] Applying static patches..."
cp -r patch/* build
echob "[4/5] Applying dynamic patches..."
shx patches
echob "[5/5] Building..."
cd build
./gradlew build
cd "$SOURCE_DIR"
echob "All build steps are done."
exit