#!/usr/bin/env bash


# IF DISPLAY VARIABLE NOT SET
if [[ -z $DISPLAY ]] ; then 
	export DISPLAY=:0
fi


# GET CHROME WINDOW IDS

CHROME_WINDOW_IDS=$(xdotool search --onlyvisible --name chrome)


# RELOAD CHROME WINDOWS IF MONITOR IS ON AND CHROME WINDOWS ARE OPEN  

if [[ ! -z $CHROME_WINDOW_IDS ]] ; then 
	for i in $CHROME_WINDOW_IDS ; do 
 		xdotool windowfocus ${i} key ctrl+r
	done

	exit 0;
fi


