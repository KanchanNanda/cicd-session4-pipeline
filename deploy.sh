#!/bin/bash

SOURCE="build/index.html"
DESTINATION="deployment/index.html"

if [ ! -f "$SOURCE" ]; then
	echo "FAIL: Build artifact not found"
	exit 1
fi

mkdir -p deployment 
cp "$SOURCE" "$DESTINATION"

if [ -f "$DESTINATION" ]; then
	echo "PASS: Deployment successful"
else
	echo "Fail: Deployment failed"
	exit 1
fi


