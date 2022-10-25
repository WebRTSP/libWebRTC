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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m102-patched-3/WebRTC.xcframework.zip",
            checksum: "828e9f429d07f14b49dbebcbc31c7d870229f15b151300f1334b1a48112af107"
        )
    ]
)
