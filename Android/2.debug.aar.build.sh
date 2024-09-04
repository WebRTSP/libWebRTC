#!/bin/bash -e

. ./1.checkout.sh

cd WebRTC.org/src/

AAR_FILE_NAME=libwebrtc-$LIBWEBRTC_VERSION_NAME.aar

echo Building $AAR_FILE_NAME...
./tools_webrtc/android/build_aar.py --build-dir "../../debug" --output "../../debug/$AAR_FILE_NAME" --arch "arm64-v8a" --extra-gn-args='is_debug=true strip_debug_info=false'

cd - > /dev/null
