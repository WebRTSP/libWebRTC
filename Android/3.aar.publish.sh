#!/bin/bash -e

. ./2.aar.build.sh

cd ./Publish

./gradlew :publish:publish

cd - > /dev/null
