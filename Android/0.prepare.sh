
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
	cd - > /dev/null
fi

if [ -d "WebRTC.org" ]; then
	cd WebRTC.org/src
	if ! git config remote.patched.url > /dev/null; then
		echo Adding reference to repo with patched WebRTC ...
		git remote add patched git@github.com:WebRTSP/WebRTC.git
		git fetch patched
	fi
	cd - > /dev/null
fi
