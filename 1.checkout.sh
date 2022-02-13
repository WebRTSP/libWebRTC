#!/bin/bash -e

# https://chromiumdash.appspot.com/branches
NAME=m98
BRANCH=4758

export PATH=$PATH:$PWD/depot_tools

cd WebRTC.org/src/

if [ "$(git rev-parse --abbrev-ref HEAD)" != "$NAME" ]; then
	echo Checking out "refs/remotes/branch-heads/$BRANCH"...
	git checkout -b $NAME refs/remotes/branch-heads/$BRANCH

	echo Syncing...
	gclient sync -D

fi

cd -
