#!/bin/bash


read -p "How many lines does this file have? " filename

wc -l $filename

if	[ -f "$filename" ]; then
	echo "$filename exists"
else
	echo "$filename does not exist"
fi

