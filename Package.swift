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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m127-patched-2/WebRTC.xcframework.zip",
            checksum: "c0bea0e813acea8e4ecc792acc0f1dcbf0e9ac765a6b7d33e62179d6b5f2bf1e"
        )
    ]
)
