#!/bin/sh
_=$(nordvpn status | grep "Status: Connected")
if [ $? -eq 0 ];then
	echo "%{F#4dd2ff}NordVPN %{F-}"
else
	echo "%{F#ff0000}NordVPN %{F-}"
fi
