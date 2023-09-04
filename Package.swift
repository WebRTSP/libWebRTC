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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m102-patched-6/WebRTC.xcframework.zip",
            checksum: "ffd82c9c7e7078456df04ae30083fa00c7664c68727c312505827eafd0f6c7f4"
        )
    ]
)
