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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m102-patched/WebRTC.xcframework.zip",
            checksum: "61510af96421e232c544e1b25b05c175194e1ac8ab2b4e63265292581ac2baa7"
        )
    ]
)
