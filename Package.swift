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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m102-patched-2/WebRTC.xcframework.zip",
            checksum: "a2c0651e5945028a07c38731c51ba1b008377f3fa442b248730b3fa6f216cc5b"
        )
    ]
)
