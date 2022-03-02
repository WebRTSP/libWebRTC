#!/bin/bash -e

. ./env.sh

cd WebRTC.org/src/

if [ "$(git rev-parse --abbrev-ref HEAD)" != "$LIBWEBRTC_VERSION_NAME" ]; then
	echo Checking out "refs/remotes/branch-heads/$LIBWEBRTC_BRANCH"...
	git checkout -B $LIBWEBRTC_VERSION_NAME refs/remotes/branch-heads/$LIBWEBRTC_BRANCH

	echo Syncing...
	gclient sync -D
fi

cd - > /dev/null
