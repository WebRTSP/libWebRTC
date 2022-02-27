#!/bin/bash -e

./1.checkout.sh

export PATH=$PATH:$PWD/depot_tools

cd WebRTC.org/src/

gn gen ../../release/arm64 --args='treat_warnings_as_errors=false is_component_build=false is_debug=false target_cpu="arm64" enable_dsyms=true rtc_include_tests=false ios_enable_code_signing=false target_os="ios" use_xcode_clang=true'
ninja -C ../../release/arm64 framework_objc

cd -