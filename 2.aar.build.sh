#!/bin/bash -e

./1.checkout.sh

export PATH=$PATH:$PWD/depot_tools

cd WebRTC.org/src/

echo Building .aar...
./tools_webrtc/android/build_aar.py --output "../../Publish/publish/libwebrtc-$NAME.aar" --arch "armeabi-v7a" "arm64-v8a"

cd -
