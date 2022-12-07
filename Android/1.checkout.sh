
#!/bin/bash -e

. ./env.sh

cd WebRTC.org/src/

if [ "$(git rev-parse --abbrev-ref HEAD)" != "$LIBWEBRTC_VERSION_NAME" ]; then
	if [[ $LIBWEBRTC_VERSION_NAME == *-patched* ]]; then
		echo Fetching from repo with patched WebRTC
		git fetch patched
		echo Checking out "$LIBWEBRTC_VERSION_NAME"...
		git checkout $LIBWEBRTC_VERSION_NAME
	else
		echo Checking out "refs/remotes/branch-heads/$LIBWEBRTC_BRANCH"...
		git checkout -B $LIBWEBRTC_VERSION_NAME refs/remotes/branch-heads/$LIBWEBRTC_BRANCH
	fi

	echo Syncing...
	gclient sync -D
fi

cd - > /dev/null
