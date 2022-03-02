#!/bin/bash -e

. ./1.checkout.sh

cd WebRTC.org/src/

rm -rf $DEBUG_XCFRAMEWORK_PATH

gn gen $DEBUG_ARM64_OUT --args='treat_warnings_as_errors=false is_component_build=false is_debug=true target_cpu="arm64" enable_dsyms=true rtc_include_tests=false ios_enable_code_signing=false target_os="ios" use_xcode_clang=true'
ninja -C $DEBUG_ARM64_OUT framework_objc

xcodebuild -create-xcframework \
	-framework $DEBUG_ARM64_OUT/WebRTC.framework \
	-output $DEBUG_XCFRAMEWORK_PATH

cd - > /dev/null
