#!/bin/bash -e

# https://chromiumdash.appspot.com/branches
VERSION_NAME=m98
BRANCH=4758

export PATH=$PATH:$PWD/depot_tools

cd WebRTC.org/src/

if [ "$(git rev-parse --abbrev-ref HEAD)" != "$VERSION_NAME" ]; then
	echo Checking out "refs/remotes/branch-heads/$BRANCH"...
	git checkout -b $VERSION_NAME refs/remotes/branch-heads/$BRANCH

	echo Syncing...
	gclient sync -D

fi

cd -
