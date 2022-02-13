#!/bin/bash -e

. ./version.sh

cd ./Publish

./gradlew :publish:publish

cd -
