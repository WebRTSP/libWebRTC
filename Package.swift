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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m127-patched/WebRTC.xcframework.zip",
            checksum: "8be13eb9b09d0e0090aa26d6ae2f13bd87630e5fa337872b4ecc97dd90b5b47e"
        )
    ]
)
