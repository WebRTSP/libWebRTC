#!/bin/bash -e

rm -rf ./release

. ./2.release.build.sh

XCFRAMEWORK_ZIP=$XCFRAMEWORK_OUT.zip

zip --symlinks -r $XCFRAMEWORK_OUT.zip $XCFRAMEWORK_OUT/

gh release create $LIBWEBRTC_VERSION_NAME $XCFRAMEWORK_ZIP --target $(git rev-parse $LIBWEBRTC_VERSION_NAME) --title $LIBWEBRTC_VERSION_NAME --notes "branch-heads/$LIBWEBRTC_BRANCH"
