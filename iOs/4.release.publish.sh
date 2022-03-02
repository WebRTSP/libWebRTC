#!/bin/bash -e

. ./env.sh

gh release create $LIBWEBRTC_VERSION_NAME $RELEASE_XCFRAMEWORK_ZIP_PATH --target $(git rev-parse $LIBWEBRTC_VERSION_NAME) --title $LIBWEBRTC_VERSION_NAME --notes "branch-heads/$LIBWEBRTC_BRANCH"
