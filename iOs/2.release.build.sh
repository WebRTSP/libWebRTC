#!/bin/bash -e

. ./1.checkout.sh

export PATH=$PATH:$PWD/depot_tools

ARM64_OUT=$PWD/release/arm64
XCFRAMEWORK_OUT=$PWD/release/WebRTC-$LIBWEBRTC_VERSION_NAME.xcframework

rm -rf $XCFRAMEWORK_OUT

cd WebRTC.org/src/

gn gen $ARM64_OUT --args='treat_warnings_as_errors=false is_component_build=false is_debug=false target_cpu="arm64" enable_dsyms=true rtc_include_tests=false ios_enable_code_signing=false target_os="ios" use_xcode_clang=true'
ninja -C $ARM64_OUT framework_objc

xcodebuild -create-xcframework \
	-framework $ARM64_OUT/WebRTC.framework \
	-output $XCFRAMEWORK_OUT

cd - > /dev/null
