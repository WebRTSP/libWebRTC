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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m127-patched-4/WebRTC.xcframework.zip",
            checksum: "ae6c9a44535aabcba9f5a32d7c8e683cd48d6239af37ae53f92cf9d0ee60347a"
        )
    ]
)
