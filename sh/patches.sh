#!/bin/bash
cd build
sed -i "s/displayname=Unicopia/displayname=Unicopia Patched/g" "gradle.properties"
exit