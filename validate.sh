#!/bin/bash

FILE="app/index.html"

if [ ! -f "$FILE" ]; then
	echo "Fail : Application file not found"
	exit 1

fi

if grep -q '<title>Invalid Title</title>' "$FILE"; then
	echo "Pass: Title validation successful"
else
	echo "Fail: Title validation failed"
	exit 1
fi



