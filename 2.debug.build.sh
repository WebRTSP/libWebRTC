#!/bin/bash -e

./1.checkout.sh

export PATH=$PATH:$PWD/depot_tools

cd WebRTC.org/src/

gn gen ../../debug/arm --args='is_debug=true target_cpu="arm" target_os="android" strip_debug_info=false'
ninja -C ../../debug/arm libwebrtc libjingle_peerconnection_so

gn gen ../../debug/arm64 --args='is_debug=true target_cpu="arm64" target_os="android" strip_debug_info=false'
ninja -C ../../debug/arm64 libwebrtc libjingle_peerconnection_so

cd -
