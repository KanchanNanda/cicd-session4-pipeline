#!/bin/bash

FILE="build/index.html"

if [ ! -f "$FILE" ]; then
	echo "FAIL: Build artifact not found"
	exit 1

fi

if grep -q '<title>CI/CD Demo</title>' "$FILE"; then
	echo "PASS: build artifact test successful"

else
	echo "FAIL: Expected title not found in build artifact"
	exit 1
fi



