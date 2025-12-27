#!/usr/bin/env bash

if [[ -z "$1" ]]; then
	echo Not file was specified >&2
	exit 1
elif [[ ! -f "$1" ]]; then
	echo Error. "$1" doesn\'t exist or is not a regular file >&2 
	exit 1
fi
echo Opening File "$1"...
echo The file has a total of $(wc -l < "$1") lines

echo The file has: 

echo \* $(grep -c "INFO" "$1") Lines of information
echo \* $(grep -c "ERROR" "$1") Errors
echo \* $(grep -c "WARN" "$1") Warnings
