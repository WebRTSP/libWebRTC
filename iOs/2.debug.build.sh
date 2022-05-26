#!/bin/bash -e

. ./1.checkout.sh

cd WebRTC.org/src/

rm -rf $DEBUG_XCFRAMEWORK_PATH

gn gen $DEBUG_ARM64_OUT --args='treat_warnings_as_errors=false is_component_build=false is_debug=true target_cpu="arm64" rtc_enable_symbol_export=false rtc_enable_objc_symbol_export=true enable_dsyms=true rtc_include_tests=false ios_enable_code_signing=false target_os="ios"'
ninja -C $DEBUG_ARM64_OUT framework_objc

xcodebuild -create-xcframework \
	-framework $DEBUG_ARM64_OUT/WebRTC.framework \
	-output $DEBUG_XCFRAMEWORK_PATH

cd - > /dev/null
