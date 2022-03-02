#!/bin/bash -e

. ./1.checkout.sh

cd WebRTC.org/src/

AAR_FILE_NAME=libwebrtc-$LIBWEBRTC_VERSION_NAME.aar

echo Building $AAR_FILE_NAME...
./tools_webrtc/android/build_aar.py --output "../../Publish/publish/$AAR_FILE_NAME" --arch "armeabi-v7a" "arm64-v8a"

cd - > /dev/null
