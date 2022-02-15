#!/bin/bash -e

if [ ! -d "depot_tools" ]; then
	echo Fetching depot_tools ...
	git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
fi

export PATH=$PATH:$PWD/depot_tools

if [ ! -d "WebRTC.org" ]; then
	echo Fetching WebRTC sources ...
	mkdir WebRTC.org
	cd WebRTC.org
	fetch --nohooks webrtc_android
	cd -
fi
