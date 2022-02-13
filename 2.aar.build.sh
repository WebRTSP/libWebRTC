#!/bin/bash -e

. ./1.checkout.sh

cd WebRTC.org/src/

echo Building .aar...
./tools_webrtc/android/build_aar.py --output "../../Publish/publish/libwebrtc-$VERSION_NAME.aar" --arch "armeabi-v7a" "arm64-v8a"

cd -
