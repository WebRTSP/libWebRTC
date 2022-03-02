#!/bin/bash -e

rm -rf ./release
. ./2.release.build.sh

cd ./release
zip --symlinks -r $RELEASE_XCFRAMEWORK_ZIP_PATH $XCFRAMEWORK
cd - > /dev/null


XCFRAMEWORK_CHECKSUM=$(swift package compute-checksum $RELEASE_XCFRAMEWORK_ZIP_PATH)

echo \"$RELEASE_XCFRAMEWORK_ZIP_PATH\" checksum: \"$XCFRAMEWORK_CHECKSUM\"

tee ../Package.swift > /dev/null <<EOF
// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "WebRTC",
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/$LIBWEBRTC_VERSION_NAME/$XCFRAMEWORK_ZIP",
            checksum: "$XCFRAMEWORK_CHECKSUM"
        )
    ]
)
EOF

cd - > /dev/null
