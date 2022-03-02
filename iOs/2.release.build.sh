#!/bin/bash -e

. ./1.checkout.sh

rm -rf $RELEASE_XCFRAMEWORK_PATH

cd WebRTC.org/src/

gn gen $RELEASE_ARM64_OUT --args='treat_warnings_as_errors=false is_component_build=false is_debug=false target_cpu="arm64" enable_dsyms=true rtc_include_tests=false ios_enable_code_signing=false target_os="ios" use_xcode_clang=true'
ninja -C $RELEASE_ARM64_OUT framework_objc

xcodebuild -create-xcframework \
	-framework $RELEASE_ARM64_OUT/WebRTC.framework \
	-output $RELEASE_XCFRAMEWORK_PATH

cd - > /dev/null
